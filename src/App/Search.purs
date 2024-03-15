-- This component should make a serach by part of the word and return the whole Item

module App.Search
  ( component
  )
  where

import Prelude

import CSS (Color, backgroundColor, color, fontFamily, fontSize, px, rgba)
import CSS.Color (Color, rgba)
import Data.Array (head)
import Data.Array.NonEmpty (NonEmptyArray, concat, filter)
import Data.Array.NonEmpty as NEA
import Data.ListEnglish (reallyMyProfiles)
import Data.Maybe (Maybe(..))
import Data.String (contains, Pattern(..))
import Data.Foldable (foldl)
import Halogen as H
import Halogen.HTML as HH
import Halogen.HTML.CSS as CSS
import Halogen.HTML.Events as HE
import Halogen.HTML.Properties as HP


type EState = { description:: String, results:: Array String }


orange :: Color
orange = rgba 255 165 0 1.0

green :: Color
green = rgba 0 128 0 1.0

css :: forall r i. String -> HH.IProp (class :: String | r) i
css = HP.class_ <<< HH.ClassName

data EAction = Search String

initialState:: String -> EState
initialState descr = { description: descr, results: [] }

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
    [ HE.onSubmit \_event -> Search "" ]
    -- 3 children:
    [ HH.h1  [
      -- HP.class_ <<< HH.ClassName "article-preview__title"
      css "article-preview" -- bootstrap ??
     , CSS.style do
            fontSize $ px 30.0
            (backgroundColor $ orange)
            (color $ green)
    ][ HH.text "Maschgiach will help you in everyday shopping to make the right decision and have to make this text a little bit logner to see how it would then look like\n Oh, and I also want to see how it would look like with a new line, but the new line does not work and I probably need to use something like <br></br>" ]   -- 1. Child
    , HH.label [ css "my-blue-class"
                 ]                            -- 2. Child no properties
        [ HH.div_ [ HH.text "Search by name or e-number" ] -- children of 2. Child (div_, input)
        , HH.input
            [ HP.value "hmm..."
            , HE.onValueInput \str -> Search str
            -- , HE.onValueChange \str -> Search str
            ]
        ]

    , HH.p_ [ HH.text state.description ] 
    -- TODO: make this dynamic HTML tags
    , HH.p_ [ HH.text (concatResults state.results) ] -- 3. Child  
    ]


concatResults :: Array String -> String
concatResults arr = foldl (\acc x -> acc <> " " <> x) " " arr


-- newHanderAction :: forall output m. MonadAff m => Action -> H.HalogenM State Action () output m Unit
-- cs IS component slots
-- MODIFY THIS TO RETURN AN ARRAY OF STRINGS ( STATE BE AN ARRAY OF STRINGS )
eHandleAction :: forall output m. EAction -> H.HalogenM EState EAction () output m Unit
eHandleAction = case _ of
  Search str -> H.modify_ \st -> st { description = fromMString (head $ search str), results = search str }
    

search :: String  -> Array String
search str = filter (\x -> contains (Pattern str) x) (reallyMyProfiles)


fromMString :: Maybe String -> String
fromMString (Just string) = string
fromMString Nothing = "Nothing"

 
 




