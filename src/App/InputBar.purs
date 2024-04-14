module App.InputBar
  ( 
   simpleInputBar
  )
  where

import Prelude

import App.Colours (brown)
import App.Common (Action(..), css)
import CSS (borderBottom, display, flex, flexDirection, height, margin, minHeight, pct, position, px, relative, row, solid, width)
import Halogen.HTML as HH
import Halogen.HTML.CSS as CSS
import Halogen.HTML.Events as HE
import Halogen.HTML.Properties as HP

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
                    css "input-bar"
                    , HP.type_ HP.InputText
                    , HE.onValueInput \str -> OpenCurtainToTheRight str
                  ]
               ]