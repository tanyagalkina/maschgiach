module App.InputBar (inputBar) where

import Prelude

import App.Common (Action(..), css)
import CSS (width, height, margin, px, fontSize)
import Halogen.HTML as HH
import Halogen.HTML.CSS as CSS
import Halogen.HTML.Events as HE
import Halogen.HTML.Properties as HP

inputBar :: forall w . HH.HTML w Action
inputBar = HH.div 
              [ css "input-bar" ]
              [
              HH.img [
                CSS.style do
                  width $ px 50.0
                  height $ px 50.0
                  margin (px 10.0 )   (px 10.0 )   (px 10.0 )  (px 10.0 )
                ,HP.src "../assets/little_search.svg"
               , HP.alt "lupe"
              ]
              , HH.input
              [
                HP.type_ HP.InputText
              , CSS.style do
                fontSize $ px 40.0 
              , HE.onValueInput \str -> OpenCurtainToTheRight str
              ]
          ]
