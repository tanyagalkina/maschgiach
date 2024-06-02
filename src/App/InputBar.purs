module App.InputBar
  ( 
   simpleInputBar
  , searchBar
  )
  where

import Prelude

import Affjax.Web (get)
import App.Assets (ampelmann, magnifyingGlass, roshTov)
import App.Assets (magnifyingGlass)
import App.Colours (black, brown, violet, white)
import App.Common (Action(..), css)
import CSS (alignItems, backgroundColor, border, borderBottom, borderRadius, color, display, flex, flexDirection, fontSize, height, justifyContent, margin, minHeight, outline, pct, position, px, relative, row, solid, spaceAround, spaceBetween, width)
import CSS.Common (center, none)
import CSS.Selector (with)
import CSS.TextAlign (justify)
import Data.Align (align)
import Halogen.HTML as HH
import Halogen.HTML.CSS as CSS
import Halogen.HTML.Events as HE
import Halogen.HTML.Properties as HP


-- FIXME: the str is probably not needed, use placeholder instead
searchBar:: forall w . String-> HH.HTML w Action
searchBar str = HH.div [
          CSS.style do
            border solid (px 2.0) brown
            -- width $ pct 100.0
            -- in Figma: height $ px 80.0
            height $ px 120.0
            display flex
            flexDirection row -- FIXME: current is row a default ?  
            backgroundColor violet
            justifyContent spaceBetween
          ]
        [
         HH.img [
          CSS.style do
          --   width $ px 80.0
          --   height $ px 80.0
             margin (px 20.0 )   (px 20.0 )   (px 20.0 )  (px 40.0 )
            ,HP.src roshTov
            , HP.alt "roshTov"
          ] 
        , HH.div[
          CSS.style do
            display flex
            flexDirection row
            alignItems center
            backgroundColor white
            -- FIXME: current: how to make elements proportional ?  pct or px ??
            width $ pct 80.0
            margin (px 20.0) (px 20.0) (px 20.0) (px 20.0)
            borderRadius (px 50.0) (px 50.0) (px 50.0) (px 50.0)
            justifyContent spaceBetween
          
        ] [ 
          HH.img
          -- FIXME: current: can we style the pleaeholder ? 
            [ HP.src magnifyingGlass
            , CSS.style do 
                  width $ px 45.0
                  height $ px 45.0
                  margin (px 10.0) (px 10.0) (px 10.0) (px 20.0)
             ]
          , HH.input [
          HP.placeholder "Name or Number"
          , css "new-input-bar"
          , CSS.style do
            color violet
            width $ pct 85.0
            height $ px 45.0
            fontSize (case str of "" -> px 20.0
                                  _  -> px 30.0)
            -- FIXME: current: could not get it work i PS: border none, outline none 
            -- FIXME: current: fix this hack, what is the right way ?
            borderRadius (px 50.0) (px 50.0) (px 50.0) (px 50.0) , 
            HE.onValueInput \string -> DoSearch string


            
          -- HP.placeholder (case str of "" -> "Name or Number" 
          --                             _ -> str) 
          -- , HP.type_ HP.InputText
          -- , CSS.style do
          --     color (case str of "" -> black
          --                        _  -> violet)

         ]
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
                    , HE.onValueInput \str -> DoSearch str
                  ]
               ]