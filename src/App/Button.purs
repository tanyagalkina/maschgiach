module App.Button
  ( 
  component
  )
  where

import Prelude

import Halogen as H
import Halogen.HTML as HH
import Halogen.HTML.Events as HE
import Halogen.HTML.Properties as HP


type NewInput = Unit
type MyItems = Array MyRecord

type MyRecord = { name :: String, age :: Int, description :: String }

-- has to be paired with newHanldeAction fn
data NewAction = LookUP | Reset | Submit

-- has to be paired with initialState fn
type NewState =  { description :: String }

initialState:: String -> NewState
initialState i = { description: i }
type MyState =  MyRecord

data SearchAction = SearchAction


-- type ComponentSpec state query action slots input output m = { eval :: (HalogenQ query action input) ~> (HalogenM state action slots output m), initialState :: input -> state, render :: state -> HTML (ComponentSlot slots m action) action }

component :: forall q o m. H.Component q String o m
component =
  -- mkComponent :: forall m output input slots action query state. ComponentSpec state query action slots input output m -> Component query input output m
  H.mkComponent
    {render: render1 
    ,initialState: \state -> initialState state
     ,eval: H.mkEval H.defaultEval { handleAction = newHandleAction }
    }

-- cs IS component slots
-- TODO: understand this type signature
-- render1 :: forall output m. NewAction -> H.HalogenM NewState NewAction () output m 
render1 :: forall m. NewState -> H.ComponentHTML NewAction () m
render1 state = HH.div_ 
  [ HH.h1_ [ HH.text "Hello, Halogen!"]
  , HH.p_ [ HH.text "Please, dont panic, go more!"]
  , HH.a [ HP.href "https://pursuit.purescript.org/packages/purescript-halogen/5.0.0/docs/Halogen.HTML" ] [ HH.text "Halogen HTML"]
  -- how can I get the input values here?
  -- onInput :: forall i r. (Event -> i) -> IProp ( onInput :: Event | r ) i
  -- onClick :: forall i r. (MouseEvent -> i) -> IProp ( onClick :: MouseEvent | r ) i
  -- onClick :: forall action row. (MouseEvent -> action) -> IProp ( onClick :: MouseEvent | row ) action
  , HH.input [ HP.placeholder "search by name"
              , HE.onInput \_i -> LookUP
              , HE.onClick\_c -> Reset
              , HE.onMouseOver \_hover -> Submit
              ]
  , HH.p_ [ HH.text state.description ]
  ]


-- newHanderAction :: forall output m. MonadAff m => Action -> H.HalogenM State Action () output m Unit
-- cs IS component slots
newHandleAction :: forall cs o m. NewAction -> H.HalogenM NewState NewAction cs o m Unit
newHandleAction = case _ of
  LookUP -> H.modify_ \st -> st { description = st.description <> "LookUP"}
  Reset -> H.modify_ \st -> st { description = "Reset" }
  Submit -> H.modify_ \st -> st { description = "Submit" }


