module App.InputBar (simpleInputBar) where

import Prelude

import App.Colours (orange, brown)
import App.Common (Action(..), css)
import CSS (border, borderRadius, display, em, flex, flexDirection, fontSize, height, margin, marginLeft, marginTop, minHeight, pct, position, px, relative, row, solid, vh, width, left, borderBottom)
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
      width $ pct 90.0
      margin (pct 0.0) (pct 5.0) (pct 0.0) (pct 5.0)
      minHeight $ px 95.0
      borderBottom solid (px 3.0) brown
      display flex
      flexDirection row
      -- borderRadius (px 10.0) (px 10.0) (px 10.0) (px 10.0)

] [
                HH.img [
                CSS.style do
                  position relative 
                  width $ px 80.0
                  height $ px 80.0
                  margin (px 10.0 )   (px 10.0 )   (px 10.0 )  (px 10.0 )
               ,  HP.src "../assets/AmpelmannLupe.svg"
               , HP.alt "lupe"
              ]
                 , HH.input
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
