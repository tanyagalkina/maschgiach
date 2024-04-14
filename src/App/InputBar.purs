module App.InputBar (simpleInputBar) where

import Prelude

import App.Common (Action(..), css)
import App.Colours(green)
import CSS (fontSize, height, margin, marginLeft, marginTop, px, width, pct, border, solid, vh, em, minHeight)
import Halogen.HTML as HH
import Halogen.HTML.CSS as CSS
import Halogen.HTML.Events as HE
import Halogen.HTML.Properties as HP

-- inputBar :: forall w . HH.HTML w Action
-- inputBar = HH.div 
--               [ css "input-bar" ]
--               [
--               HH.img [
--                 CSS.style do
--                   width $ px 80.0
--                   height $ px 80.0
--                   margin (px 5.0 )   (px 5.0 )   (px 5.0 )  (px 5.0 )
--                ,  HP.src "../assets/AmpelmannLupe.svg"
--                , HP.alt "lupe"
--               ]
--               , HH.input
--               [
--                 HP.type_ HP.InputText
--               , CSS.style do
--                 fontSize $ px 40.0
--                 marginTop $ px 12.0
--                 marginLeft $ px 10.0
--               , HE.onValueInput \str -> OpenCurtainToTheRight str
--               ]
--           ]

simpleInputBar :: forall w . HH.HTML w Action
simpleInputBar  = HH.div [
  CSS.style do
      width $ pct 100.0
      minHeight $ px 95.0
      border solid (px 3.0) green
] [
                 HH.input
                  [
                    css "simple-input-bar"
                    , HP.type_ HP.InputText
                    --,CSS.style do
                    --  width $ pct 100.0
                    -- , CSS.style do
                    -- fontSize $ px 40.0
                    -- marginTop $ px 12.0
                    -- marginLeft $ px 10.0
                    , HE.onValueInput \str -> OpenCurtainToTheRight str
                  ]
                ]
