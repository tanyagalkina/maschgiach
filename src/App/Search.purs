-- This component should make a serach by part of the word and return the whole Item

module App.Search
  ( component
  )
  where

import Prelude

import Data.Array (head)
import Data.Array.NonEmpty (NonEmptyArray, filter)
import Data.Array.NonEmpty as NEA
import Data.Maybe (Maybe(..))
import Data.String (contains, Pattern(..))

import Halogen as H
import Halogen.HTML as HH
import Halogen.HTML.Events as HE
import Halogen.HTML.Properties as HP
import Halogen.HTML.CSS as CSS

import CSS (backgroundColor, fontSize, px)
import CSS.Color (Color,  rgba )


type EState = { description:: String }


orange :: Color
orange = rgba 255 165 0 1.0

css :: forall r i. String -> HH.IProp (class :: String | r) i
css = HP.class_ <<< HH.ClassName

myProfiles:: Maybe (NonEmptyArray String)
myProfiles = NEA.fromArray ["Perfect", "Good", "Brilliant", "Excellent", "Superb", "Great", "Wonderful", "Fantastic", "Amazing", "Awesome", "Incredible", "Unbelievable", "Magnificent", "Fabulous", "Terrific", "Splendid", "Marvelous", "Phenomenal", "Extraordinary", "Outstanding", "Impressive", "Sensational", "Remarkable", "Exceptional", "Stunning", "Astounding", "Stupendous", "Mind-blowing", "Breathtaking", "Astonishing", "Glorious", "Majestic", "Grand", "Magnificent", "Sublime", "Noble", "Elegant", "Exquisite", "Graceful", "Beautiful", "Lovely", "Charming", "Delightful", "Pleasant", "Enjoyable", "Good", "Nice", "Fine", "Decent", "Fair", "Satisfactory", "Adequate", "Acceptable", "Tolerable", "Passable", "OK", "All right", "Not bad", "So-so", "Mediocre", "Middling", "Ordinary", "Average", "Fair", "Common", "Usual", "Typical", "Conventional", "Standard", "Regular", "Normal", "Traditional", "Customary", "Routine", "Accustomed", "Familiar", "Wonted", "Habitual", "Everyday", "Commonplace", "Workaday", "Prosaic", "Unremarkable", "Unexceptional", "Undistinguished", "Uninspired", "Unexciting", "Uninteresting", "Boring", "Dull", "Tedious", "Tiresome", "Monotonous", "Unvaried", "Unvarying", "Unchanging"]

reallyMyProfiles :: Maybe (NonEmptyArray String) -> NonEmptyArray String
reallyMyProfiles (Just items) = items
reallyMyProfiles Nothing = NEA.cons "Nothing" (NEA.singleton "Nothing")

data EAction = Search String

initialState:: String -> EState
initialState descr = { description: descr }

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
      css "ion-compose"
    --  , CSS.style do
    --         fontSize $ px 20.0
    --         (backgroundColor $ orange)
    ][ HH.text "Profiling" ]   -- 1. Child
    , HH.label_                            -- 2. Child no properties
        [ HH.div_ [ HH.text "Search by part of the word:" ] -- children of 2. Child (div_, input)
        , HH.input
            [ HP.value "search"
            , HE.onValueInput \str -> Search str
            -- , HE.onValueChange \str -> Search str
            ]
        ]
    , HH.p_ [ HH.text state.description ]  -- 3. Child  
    ]
  

-- newHanderAction :: forall output m. MonadAff m => Action -> H.HalogenM State Action () output m Unit
-- cs IS component slots
-- MODIFY THIS TO RETURN AN ARRAY OF STRINGS ( STATE BE AN ARRAY OF STRINGS )
eHandleAction :: forall output m. EAction -> H.HalogenM EState EAction () output m Unit
eHandleAction = case _ of
  Search str -> H.modify_ \st -> st { description = fromMString (head $ search str) }
    

search :: String  -> Array String
search str = filter (\x -> contains (Pattern str) x) (reallyMyProfiles myProfiles)


fromMString :: Maybe String -> String
fromMString (Just string) = string
fromMString Nothing = "Nothing"

 
 




