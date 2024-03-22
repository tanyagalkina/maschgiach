-- This module defines a simple single compoment with no effects
-- In addition to example functionality it has two small examples of iserting HTML pieces

module App.Simple (component) where

import Prelude

import CSS (Color, Display(..), a, alignContent, alignItems, backgroundColor, backgroundImage, color, display, fontFamily, fontSize, height, justifyContent, margin, marginLeft, marginTop, pct, px, rgba)
import Halogen as H
import Halogen.HTML (fromPlainHTML)
import Halogen.HTML as HH
import Halogen.HTML.CSS as CSS
import Halogen.HTML.Events as HE
import Halogen.HTML.Properties (InputType(..))
import Halogen.HTML.Properties as HP



css :: forall r i. String -> HH.IProp (class :: String | r) i
css = HP.class_ <<< HH.ClassName

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

render :: forall cs m. State  -> H.ComponentHTML Action cs m
render _state = 
  HH.div [HP.id "content-container"]
     [
      halogenLink  -- 3. Child 
    -- fromPlainHTML myPlainHTML
     , HH.div [  css "center-container"] 
      -- center container start 
      --  TODO: Wrap this for Icon (img ) to have position : absolute
        [  
          HH.input
            [
              HP.type_ HP.InputText
            , css "my-simple-input"
            , HP.placeholder "tezku le mitzvot!"
          ]
          ---------------------
          , HH.img [
            HP.src "../assets/lupe_2.png"
            , HP.alt "lupe"
            , css "input-icon"
          ]
          -----------------------
          , HH.div [ css "curtain"]
           [HH.text "CURTAIN"]
          --   [
          --     HH.button [ HE.onClick Decrement ] [ HH.text "-" ]
          --   , HH.div [ css "count"] [ HH.text $ show _state.count ]
          --   , HH.button [ HE.onClick Increment ] [ HH.text "+" ]

          --------------------------
        ]
      -- center container end
      , HH.div [HP.id "footer_variant2"]
        [
        HH.text "Footer Variant 2"
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
  [ HH.h3 [
    CSS.style do
      color $ rgba 245 255 250 1.0
      marginTop $ px 40.0
      marginLeft $ pct 20.0
  ] [ HH.text "maschgiach"]
  -- , HH.p [
  --   CSS.style do
  --     backgroundColor $ rgba 0 0 0 0.1
    
  -- ][  HH.text "Please, dont panic, go more!"]
  -- , HH.a [ HP.href "https://pursuit.purescript.org/packages/purescript-halogen/5.0.0/docs/Halogen.HTML" ] [ HH.text "Halogen HTML"]
  ]

myPlainHTML :: HH.PlainHTML
myPlainHTML = HH.text "Hello, Plain HTML Type!"  
