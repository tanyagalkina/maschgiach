-- This component should make a serach by part of the word and return the whole Item

module App.Search
  ( component
  )
  where

import Prelude

import Affjax.Web (get)
import CSS (Color, Display(..), a, alignItems, backgroundColor, backgroundImage, color, display, fontFamily, fontSize, height, justifyContent, margin, pct, px, rgba)
import CSS.Color (Color, rgba)
import CSS.Flexbox (FlexDirection(..), flexDirection, flexWrap, justifyContent, alignItems, flex)
import Control.Plus (empty)
import Data.Array (fromFoldable, elem)
import Data.Array.NonEmpty (NonEmptyArray, concat, filter)
import Data.Array.NonEmpty as NEA
import Data.Foldable (foldl)
import Data.Eq (eq)
import Data.List (List(..), head)
import Data.ListEnglish (AdditiveGroup, ENumber, ENumberList, Kashrut(..), Source(..), findENumbersInList, showK)
import Data.Maybe (Maybe(..))
import Data.String (Pattern(..), contains)
import Halogen as H
import Halogen.HTML as HH
import Halogen.HTML.CSS as CSS
import Halogen.HTML.Events as HE
import Halogen.HTML.Properties as HP

type EState = { description:: String, results:: ENumberList, card:: Maybe ENumber }

orange :: Color
orange = rgba 255 165 0 1.0

green :: Color
green = rgba 0 128 0 0.8

softred :: Color
softred = rgba 205 92 92 1.0 

beige :: Color
beige = rgba 210 180 140 0.8

lightgreen :: Color
-- lightgreen = rgba 144 238 144 1.0
-- lightgreen = rgba 124 252 124 1.0
lightgreen = rgba 50 205 50 1.0
-- Light Green: rgba(144, 238, 144, 1.0)

skyblue :: Color
skyblue = rgba 135 206 235 1.0
-- Lavender: rgba(230, 230, 250, 1.0)
-- Peach: rgba(255, 218, 185, 1.0)
-- Beige: rgba(245, 245, 220, 1.0)
-- Mint Cream: rgba(245, 255, 250, 1.0)

brightred :: Color
brightred = rgba 255 69 0 1.0

css :: forall r i. String -> HH.IProp (class :: String | r) i
css = HP.class_ <<< HH.ClassName

data EAction = Search String | OpenCard ENumber

initialState:: String -> EState
initialState descr = { description: descr, results: empty, card: Nothing }

component :: forall query output m . H.Component query String output m 
component =
  H.mkComponent
    { 
     initialState: \i -> initialState i  
    , render
    , eval: H.mkEval H.defaultEval { handleAction = eHandleAction }
    }


-- why is it rendering on Enter ?
render :: forall m . EState -> H.ComponentHTML  EAction () m  
render state = 
  HH.form
    -- 1 property ( onSubmit ) 
    [ 
      -- css "attribution"
      CSS.style do
           (backgroundColor $ beige )
      , HE.onSubmit \_event -> Search "" ]
    -- 3 children:
    [ HH.h1  [
      -- HP.class_ <<< HH.ClassName "article-preview__title"
      -- css "article-preview" -- bootstrap ??
      css "container" -- why the links are dissaprearing when I go ??
      -- , CSS.css { fontFamily: "Arial, sans-serif"}
      , CSS.style do
           fontSize $ px 30.0
          --  (backgroundColor $ softred)
           (color $ green)
      ]
      [ HH.text "Maschgiach will help you in everyday shopping to make the right decision and have more Mitzves! Why is this text rendered this way?" ]   -- 1. Child
    , HH.div [ css "my-flex-container"
                 ]                            -- 2. Child no properties
        -- [ HH.div[
        --   css "my-flex-container"

        -- ] [ HH.text "Search by name or e-number" ] -- children of 2. Child (div_, input)
        [HH.input
            [ 
              css "my-input"
            , HP.value "hmm..."
            , HE.onValueInput \str -> Search str
            -- , HE.onValueChange \str -> Search str
            ]
        ]

    -- , HH.p_ [ HH.text state.description ]
    , HH.p [ css "container"]
      --  [HH.text "Reset"

    -- [ HH.text (showResults state.results) ] -- 3. Child  
       [showResults state.results]
    , HH.p_ [ HH.text ""] 
    , showCard state.card 
    -- TODO: make this dynamic HTML tags
    ]


showCard ::forall w i.  Maybe ENumber -> HH.HTML w i
showCard (Just eNumber) = showENumberHTML eNumber
showCard Nothing = HH.text ""

showResults :: forall w . ENumberList -> HH.HTML w EAction
-- showResults arr = map (\x -> HH.text (x.name <> " " <> showK x.kashrut)) arr
showResults arr = 
  HH.div_
    [ HH.h1_ [ HH.text ""]
    , HH.ul_ $ map renderENumber (fromFoldable arr)
    ]


showENumberHTML :: forall w i. ENumber -> HH.HTML w i
showENumberHTML e =
  HH.div [
    css "my-card"
    , CSS.style do
  --          fontSize $ px 20.0
       (backgroundColor $ getColorForKashrut e)
  --          (color $ green)

  ]
    [ HH.div_ [HH.text e.name]
    , HH.div_ [HH.text e.e_number]
    , HH.div_ [HH.text e.description]
    , HH.div_ [HH.text (showK e.kosher)]
    ]

-- TODO: decide where to put this function
-- why I have to import all the variants ? 
getColorForKashrut :: ENumber -> Color
getColorForKashrut k = if (containsDairy k.source) then skyblue else  
    case k.kosher of
        NotKosher -> softred   
        KosherIncludingPassover -> green
        KosherNeedPassoverHashgoho -> lightgreen
        UsuallyKosherRarelyNeedHashgoho -> green
        OftenKosherNeedHashgoho -> green
        NotKosherWithoutEksher -> softred
        KosherForbidden -> brightred

containsDairy:: Array Source -> Boolean
containsDairy arr = elem Dairy arr  

renderENumber :: forall w . ENumber -> HH.HTML w EAction
renderENumber eNumber =
  HH.li [ css "my-list"]
    [ HH.button 
        [ css "button"
          , CSS.style do
            (backgroundColor $ (getColorForKashrut eNumber))
          , HE.onClick $ \_ -> OpenCard eNumber ]
        [ HH.text (eNumber.name <> " " <> showK eNumber.kosher) ]
    ]


eHandleAction :: forall output m. EAction -> H.HalogenM EState EAction () output m Unit
eHandleAction = case _ of
  Search str -> H.modify_ \st -> st { description = getDescription (head $ search str), results = search str }
  OpenCard eNumber -> H.modify_ \st -> st { description = eNumber.name, results = empty, card = Just eNumber}



getDescription :: Maybe ENumber -> String
getDescription (Just enumber) = (enumber.e_number) <> " " <> (enumber.name)
getDescription Nothing = "Nothing"

search :: String -> ENumberList
search str = findENumbersInList str

-- search :: String  -> Array String
-- search str = filter (\x -> contains (Pattern str) x) (reallyMyProfiles)


-- fromMString :: Maybe String -> String
-- fromMString (Just string) = string
-- fromMString Nothing = "Nothing"

 
 




