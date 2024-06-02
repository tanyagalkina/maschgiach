module App.InputBar
  ( 
   simpleInputBar
  , searchBar
  )
  where

import Prelude

import App.Assets (ampelmann, roshTov)
import App.Colours (brown, violet)
import App.Common (Action(..), css)
import CSS (backgroundColor, border, borderBottom, display, flex, flexDirection, height, margin, minHeight, pct, position, px, relative, row, solid, width)
import CSS.Selector (with)
import Halogen.HTML as HH
import Halogen.HTML.CSS as CSS
import Halogen.HTML.Events as HE
import Halogen.HTML.Properties as HP

searchBar:: forall w . HH.HTML w Action
searchBar = HH.div [
          CSS.style do
            border solid (px 2.0) brown
            -- width $ pct 100.0
            height $ px 80.0
            display flex
            flexDirection row
            backgroundColor violet
          ]
        [
         HH.img [
          -- CSS.style do
          --   width $ px 80.0
          --   height $ px 80.0
          --   margin (px 10.0 )   (px 10.0 )   (px 10.0 )  (px 10.0 )
            HP.src roshTov
            , HP.alt "roshTov"
          ] 
        , HH.input [
         ]
      ]

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
              --  ,  HP.src "../assets/AmpelmannLupe.svg"
               , HP.src ampelmann
               , HP.alt "lupe"
              ]
                 , HH.input
                  [
                    css "input-bar"
                    , HP.type_ HP.InputText
                    , HE.onValueInput \str -> OpenCurtainToTheRight str
                  ]
               ]