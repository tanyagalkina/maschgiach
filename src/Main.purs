module Main where

import Prelude

import App.Weather as Weather
import App.Button as Button
import App.HTTP as HTTP
import App.Random as Rand
import App.Search as Search
import App.Simple as Simple
import Data.Maybe (Maybe(..))
import Effect (Effect)
import Halogen.Aff as HA
import Halogen.HTML as HH
import Halogen.HTML.Properties as HP
import Halogen.VDom.Driver (runUI)

main :: Effect Unit
main = HA.runHalogenAff do
  body <- HA.awaitBody
  -- runUI :: forall r f i o. RenderSpec r -> Component f i o Aff -> i -> Aff (HalogenIO f o Aff)

  -- same as example from the book, can use as playground
  -- runUI Button.component "Hello, Halogen!" body

  -- example from the book and two small add HTML examples
  runUI Simple.component unit body

  -- search by part of the word
  -- runUI Search.component "Maschgiach" body

  -- example using the Effect ( generate random number and display it )
  -- runUI Rand.component unit body
  -- example using Aff monad
  -- runUI HTTP.component unit body
  -- modified example using Aff monad
  -- runUI Weather.component "berlin" body


-- elements in halogen accept two arguments: array of properties, and array of children
element = HH.h1 [] [ HH.text "Hello, World!" ]

-- <div id="root">
--   <input placeholder="Name" />
--   <button class="btn-primary" type="submit">
--     Submit
--   </button>
-- </div>

html =
  HH.div
    [ HP.id "root" ]
    [ HH.input
      [ HP.placeholder "Name" ]
  , HH.button
     [ HP.classes [HH.ClassName "btn-primary" ]
     , HP.type_ HP.ButtonSubmit
     ]
     [ HH.text "Submit" ]
  ]


-- w stands for widget, i stands for input
-- input represents the type used to handle DOM events


functionThatReturnsElement :: forall w i. String  -> HH.HTML w i 
functionThatReturnsElement name =
  HH.div_
    [ HH.text name ]

primaryButton :: forall w i . String -> HH.HTML w i
primaryButton label =
  HH.button
    [ HP.classes [HH.ClassName "primary" ]] -- array of properties
    [ HH.text label ] -- array of children


primaryButtonHTMLLabel :: forall w i . HH.HTML w i -> HH.HTML w i
primaryButtonHTMLLabel label =
  HH.button
    [ HP.classes [HH.ClassName "primary"] ]
    [ label ]


maybeElem :: forall w i a. Maybe a -> (a -> HH.HTML w i) -> HH.HTML w i
maybeElem m f = case m of
  Just a -> f a
  Nothing -> HH.text "Nothing"

maybeElemShow :: forall a. Maybe a -> (a -> String) -> String  
maybeElemShow m f = case m of
  Just a -> f a
  Nothing -> "Nothing"

renderName :: forall w i. Maybe String -> HH.HTML w i
renderName mbName = maybeElem mbName \name -> HH.text name

renderNameShow :: Maybe String -> String
renderNameShow mbName  = maybeElemShow mbName \name -> name 

whenElem :: forall w i. Boolean -> ( Unit -> HH.HTML w i) -> HH.HTML w i
whenElem cond f = if cond then f unit else HH.text ""

renderOld :: forall w i .  {old :: Number, new :: Number} -> HH.HTML w i 
-- rendeOld  = whenElem bool f
renderOld {old, new } = 
   whenElem ( old /= new) \_ ->
     HH.div_ [ HH.text  $ show old ]

    -- ############

myHTML :: forall w i. HH.HTML w i
myHTML = HH.div_ 
  [ HH.h1_ [ HH.text "Hello, World!"]
  , HH.p_ [ HH.text "This is a paragraph"]
  , HH.a [ HP.href "https://pursuit.purescript.org/packages/purescript-halogen/5.0.0/docs/Halogen.HTML" ] [ HH.text "Halogen HTML"]
  ]
-- Two HTML Types
-- ComponentHTML: meant to work with particular type of component

-- PlainHTML: does not content components and does not respond to events in the DOM
 -- for use with components need to get fromPlainHTML#
 