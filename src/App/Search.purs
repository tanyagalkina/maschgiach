-- This component should make a serach by part of the word and return the whole Item

module App.Search
  ( component
  )
  where

import Prelude

import Affjax.Web (get)
import Ansi.Output (background)
import App.Colours (beige, brightred, brown, dark_yellow, green, lightgreen, orange, peach, salad, skyblue, softred, yellow, mintcream, blue)
import CSS (Color, Display(..), a, alignContent, alignItems, backgroundColor, backgroundImage, color, display, fontFamily, fontSize, height, justifyContent, margin, pct, px, rgba)
import CSS.Color (Color, rgba)
import CSS.Flexbox (FlexDirection(..), flexDirection, flexWrap, justifyContent, alignItems, flex)
import Control.Plus (empty)
import Data.Array (fromFoldable, elem)
import Data.Array.NonEmpty (NonEmptyArray, concat, filter)
import Data.Array.NonEmpty as NEA
import Data.Eq (eq)
import Data.Foldable (foldl)
import Data.List (List(..), head)
import Data.ListEnglish (AdditiveGroup, ENumber, ENumberList, Kashrut(..), Source(..), findENumbersInList, showK, showSources)
import Data.Maybe (Maybe(..))
import Data.String (Pattern(..), contains)
import Halogen as H
import Halogen.HTML as HH
import Halogen.HTML.CSS as CSS
import Halogen.HTML.Events as HE
import Halogen.HTML.Properties as HP
import Web.DOM.DOMTokenList (item)
import Web.HTML.History (back)

type EState = { description:: String, results:: ENumberList, card:: Maybe ENumber }

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
    [ 
      -- css "attribution"
      CSS.style do
           (backgroundColor $ beige )
      , HE.onSubmit \_event -> Search "" ]
    -- 3 children:
    [ HH.h1  [
      -- HP.class_ <<< HH.ClassName "article-preview__title"
      -- css "my-flex-container"
      css "container" -- bootstrap??
      -- , CSS.css { fontFamily: "Arial, sans-serif"}
      , CSS.style do
           fontSize $ px 30.0
          -- TODO:  fontFamily $ ["Arial", "sans-serif"]
          --  (backgroundColor $ softred)
           (color $ green)
      ]
      [ HH.text "mashgiach" ]
    , HH.div [ css "my-flex-container"
                 ]                    
        [HH.input
            [ 
              css "my-input"
            , HP.value "search by name or E-number"
            --- TODO: build in sound when typing ...
            , HE.onValueInput \str -> Search str
            -- , HE.onValueChange \str -> Search str
            ]
        ]

    , HH.p [ css "my-flex-container"]
       [showResults state.results]
    , HH.p_ [ HH.text ""] 
    , showCard state.card 
    ]


showCard ::forall w i.  Maybe ENumber -> HH.HTML w i
showCard (Just eNumber) = showENumberHTML eNumber
showCard Nothing = HH.text ""

showResults :: forall w . ENumberList -> HH.HTML w EAction
showResults arr = 
  HH.div_
    [ HH.h1_ [ HH.text ""]
    -- TODO: should  I have an Array ENumber  | NonEmptyArray ENumber | ListENumber ( like we have now ) ??
    , HH.ul_ $ map renderENumber (fromFoldable arr)
    ]


showENumberHTML :: forall w i. ENumber -> HH.HTML w i
showENumberHTML e =
  HH.div [
    css "my-card"
    , CSS.style do
  --          fontSize $ px 20.0
       (backgroundColor $ getBackgroundForKashrut e)
       (color $ getColorForKashrut e)

  ]
    [ HH.div_ [HH.text e.name]
    , HH.div_ [HH.text e.e_number]
    , HH.div_ [HH.text e.description]
    , HH.div_ [HH.text (showSources e.source)]
    , HH.div_ [HH.text (showK e.kosher)]
    ]

getBackgroundForKashrut :: ENumber -> Color
getBackgroundForKashrut k = if (containsDairy k.source) then skyblue else  
    case k.kosher of
        NotKosher -> softred   
        KosherIncludingPassover -> lightgreen
        KosherNeedPassoverHashgoho -> green
        UsuallyKosherRarelyNeedHashgoho -> yellow
        OftenKosherNeedHashgoho -> orange
        NeedHashgohoWholeYear -> softred
        KosherForbidden -> brightred

getColorForKashrut :: ENumber -> Color
getColorForKashrut k = if (containsDairy k.source) then brown else  
    case k.kosher of
        NotKosher -> peach   
        KosherIncludingPassover -> blue
        KosherNeedPassoverHashgoho -> peach
        UsuallyKosherRarelyNeedHashgoho -> brown
        OftenKosherNeedHashgoho -> green
        NeedHashgohoWholeYear -> brown
        KosherForbidden -> peach        

containsDairy:: Array Source -> Boolean
containsDairy arr = elem Dairy arr  

renderENumber :: forall w . ENumber -> HH.HTML w EAction
renderENumber eNumber =
  HH.li [ css "my-list"]
    [ HH.button 
        [ css "button"
          , CSS.style do
            (backgroundColor $ (getBackgroundForKashrut eNumber))
            (color $ getColorForKashrut eNumber)
            -- my_style make reusable
          , HE.onClick $ \_ -> OpenCard eNumber ]
        [ HH.text (eNumber.name <> " " <> eNumber.e_number) ]
    ]

-- my_stlye :: CSS.CSS
-- my_stlye = do
--   backgroundColor $ beige  


eHandleAction :: forall output m. EAction -> H.HalogenM EState EAction () output m Unit
eHandleAction = case _ of
  Search str -> H.modify_ \st -> st { description = getDescription (head $ search str), results = search str }
  OpenCard eNumber -> H.modify_ \st -> st { description = eNumber.name, results = empty, card = Just eNumber}



getDescription :: Maybe ENumber -> String
getDescription (Just enumber) = (enumber.e_number) <> " " <> (enumber.name)
getDescription Nothing = "Nothing"

search :: String -> ENumberList
search str = findENumbersInList str


 
 




