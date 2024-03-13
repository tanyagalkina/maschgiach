-- This module defines a simple single compoment with no effects
-- In addition to example functionality it has two small examples of iserting HTML pieces

module App.Simple (component) where

import Prelude
import Halogen as H
import Halogen.HTML as HH
import Halogen.HTML.Properties as HP
import Halogen.HTML.Events as HE
import Halogen.HTML (fromPlainHTML)


type State
  = { count :: Int }

data Action
  = Increment | Decrement
component :: forall query input output m . H.Component query input output m 
component =
  H.mkComponent
    { 
     initialState: \_ -> { count: 0 }
    , render
    , eval: H.mkEval H.defaultEval { handleAction = handleAction }
    }

-- TODO: see which type of Signal function
render :: forall cs m. State  -> H.ComponentHTML Action cs m
render state = 
  HH.div 
    -- below is the array of properties of div
    [ HP.id "root" ]
    -- below is the array of children if div
    [ HH.input -- 1. child
        -- this is the property of the input; input has no children
      [ HP.placeholder (show state.count)]
    , HH.button -- 2. child
        -- list of properties of the button 
        [ HP.classes [ HH.ClassName "btn-primary" ]
        , HP.type_ HP.ButtonSubmit
        , HE.onClick \_ -> Increment
        ]
        -- list of children of the button
        [ HH.text " I know this is hard .. (())" ]
    , halogenLink  -- 3. Child 
    , fromPlainHTML myPlainHTML
    , HH.input -- 4. child
       [HP.placeholder "search by name"
      ]
     ]
  
-- dont use component slots
-- HalogenM is often called the "eval" Monad
-- HalogenM works only with Halogen-specific features
-- handleAction :: forall cs o m. Action → H.HalogenM State Action cs o m Unit  
handleAction :: forall o m. Action → H.HalogenM State Action () o m Unit

handleAction = case _ of
  Increment -> H.modify_ \st -> st { count = st.count + 1 }
  Decrement -> H.modify_ \st -> st { count = st.count - 1 }

halogenLink :: forall w i. HH.HTML w i
halogenLink = HH.div_ 
  [ HH.h1_ [ HH.text "Hello, Halogen!"]
  , HH.p_ [ HH.text "Please, dont panic, go more!"]
  , HH.a [ HP.href "https://pursuit.purescript.org/packages/purescript-halogen/5.0.0/docs/Halogen.HTML" ] [ HH.text "Halogen HTML"]
  ]

myPlainHTML :: HH.PlainHTML
myPlainHTML = HH.text "Hello, Plain HTML Type!"  
