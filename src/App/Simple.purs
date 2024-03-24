-- This module defines a simple single compoment with no effects
-- In addition to example functionality it has two small examples of iserting HTML pieces

module App.Simple (component) where

import Prelude

import CSS (Color, Display(..), a, alignContent, alignItems, backgroundColor, backgroundImage, color, display, fontFamily, fontSize, height, justifyContent, margin, marginLeft, marginRight, marginTop, paddingLeft, paddingRight, paddingTop, pct, position, px, rgba, right, top, width, zIndex)
import CSS.Cursor (move)
import Control.Monad.State (state)
import Data.String.CodePoints (length)
-- import Effect.AVar (status)
import Halogen as H
import Halogen.HTML (fromPlainHTML)
import Halogen.HTML as HH
import Halogen.HTML.CSS as CSS
import Halogen.HTML.Events (onInput)
import Halogen.HTML.Events as HE
import Halogen.HTML.Properties (InputType(..))
import Halogen.HTML.Properties as HP

-- import Web.DOM.Element (classList)


css :: forall r i. String -> HH.IProp (class :: String | r) i
css = HP.class_ <<< HH.ClassName

type State
  = { count :: Int, moveCurtain :: Boolean}

data Action
  = Increment | Decrement | OpenCurtainToTheRight String | CloseCurtainToTheLeft
component :: forall query input output m . H.Component query input output m 
component =
  H.mkComponent
    { 
     initialState: \_ -> { count: 0, moveCurtain: false}
    , render
    , eval: H.mkEval H.defaultEval { handleAction = handleAction }
    }

render :: forall cs m. State  -> H.ComponentHTML Action cs m
render _state = 
  HH.div [HP.id "content-container"]
     [
      halogenLink  -- 3. Child 
    -- fromPlainHTML myPlainHTML
     , HH.div [
           CSS.style do
             marginLeft $ pct 90.0
         ]
         [HH.img 
          [ 
            HP.src "../assets/ellipse_ek4.png"
          , HP.alt "language"
          ]
         ]
      , HH.div [ css "center-container"] 
      -- center container start 
      --  TODO: Wrap this for Icon (img ) to have position : absolute
        [  
          HH.div 
          [
            css "my-simple-input"
          ]
          [
            HH.input
            [
              HP.type_ HP.InputText
              , HE.onValueInput \str -> OpenCurtainToTheRight str
              , HP.placeholder "tezku le mitzvot!"
            ]
          ---------------------
             , HH.img [
              css "input-icon"
            -- HP.src "../assets/lupe_2.png"
             , HP.src "../assets/lupe.png"
             , HP.alt "lupe"
            --  , onInput \input -> OpenCurtainToTheRight input
             ]
          ]
          ]
          -----------------------
          , HH.div [ 
                   HP.classes $ getCurtainClassList _state.moveCurtain
                   --  css "curtain"
                    --   TODO: clean the styles
                    ,CSS.style do
                       paddingTop $ pct 7.0
                       paddingRight $ px 40.0
                       paddingLeft $ px 70.0
                   ]
                   [HH.text " This ENumber Dictionary is based on Sefer Mahor LeKaschrut and on Sefer of Rabbi Pantelyat; it is not exhaustive and is meant to be used as a reference only. For more information, please consult a competent Halachic authority."]
          -- --------------------------
      -- center container end
      -----------------------------------

        , HH.div
          [
            HP.id "footer_variant2"
          ]
          [
            HH.div []
              [HH.img [
              HP.src "../assets/union.png"
              , HP.alt "copyright"
              ]]
            , HH.text " "
            , HH.text "© 2024. We love Israel"

          ]
     ]



-- #footer_variant2 {
--   position: absolute;
-- 	bottom: 0px;
-- 	width: 100%; 
-- 	height: 109px;
--   background: linear-gradient(to right, #FFAA64, #FFC882, #FFE6A0);
--   /* background-color: rgb(247, 198, 108); */
-- }




getCurtainClassList :: Boolean -> Array HH.ClassName
getCurtainClassList moveCurtain = 
 [HH.ClassName "curtain"] <> if moveCurtain then [HH.ClassName "curtain-move-right"] else []


--   [ (HH.ClassName "curtain-move-right", moveCurtain) ]
-- dont use component slots
-- HalogenM is often called the "eval" Monad
-- HalogenM works only with Halogen-specific features
-- handleAction :: forall cs o m. Action → H.HalogenM State Action cs o m Unit  

-- eHandleAction :: forall output m. EAction -> H.HalogenM EState EAction () output m Unit
-- eHandleAction = case _ of
--   Search str -> H.modify_ \st -> st { description = getDescription (head $ search str), results = search str }
--   OpenCard eNumber -> H.modify_ \st -> st { description = eNumber.name, results = empty, card = Just eNumber}


handleAction :: forall o m. Action → H.HalogenM State Action () o m Unit

handleAction = case _ of
  Increment -> H.modify_ \st -> st { count = st.count + 1 }
  Decrement -> H.modify_ \st -> st { count = st.count - 1 }
  OpenCurtainToTheRight str -> H.modify_ \st  -> st { count = st.count + 1, moveCurtain =  getLength str}
  CloseCurtainToTheLeft -> H.modify_ \st -> st { count = st.count - 1, moveCurtain = false }

getLength :: String -> Boolean
getLength str = case length str of
  0 -> false
  _ -> true  

halogenLink :: forall w i. HH.HTML w i
halogenLink = HH.div_ 
  [ HH.h3 [
    CSS.style do
      color $ rgba 245 255 250 1.0
      marginTop $ px 40.0
      marginLeft $ pct 20.0
  ] [ HH.text "schalom"]
  -- , HH.p [
  --   CSS.style do
  --     backgroundColor $ rgba 0 0 0 0.1
    
  -- ][  HH.text "Please, dont panic, go more!"]
  -- , HH.a [ HP.href "https://pursuit.purescript.org/packages/purescript-halogen/5.0.0/docs/Halogen.HTML" ] [ HH.text "Halogen HTML"]
  ]

myPlainHTML :: HH.PlainHTML
myPlainHTML = HH.text "Hello, Plain HTML Type!"  
