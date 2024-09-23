module App.InputBar (searchBar) where

import App.Assets (magnifyingGlass, roshTov)
import App.Colours (violet, white)
import App.Common (Action(..), css)

import Halogen.HTML as HH
import Halogen.HTML.CSS as CSS
import Halogen.HTML.Events as HE
import Halogen.HTML.Properties as HP

import Prelude
import CSS (alignItems, backgroundColor, borderRadius, color, display, flex, flexDirection, fontSize, height, justifyContent, margin, pct, px, row, spaceAround, spaceBetween, width)
import CSS.Common (center)

-- FIXME: the str is probably not needed, use placeholder instead
-- ... ??? what is this fixme about ? 
searchBar:: forall w . String-> String -> HH.HTML w Action
searchBar str placeholder =
  HH.div
    [ CSS.style do
        height $ px 80.0
        display flex
        backgroundColor violet
        justifyContent spaceBetween
    ]
    [ HH.img
        [ CSS.style do
            width $ px 60.0
            height $ px 50.0
            margin (px 15.0 )   (px 15.0 )   (px 15.0 )  (px 15.0 )
          , HP.src roshTov
          , HP.alt "roshTov"
        ] 
    , HH.div
        [ CSS.style do
            display flex
            flexDirection row
            alignItems center
            backgroundColor white
            -- FIXME: how to make elements proportional ?  pct or px ??
            width $ pct 80.0
            height $ px 50.0
            margin (px 13.0) (px 15.0) (px 15.0) (px 0.0)
            borderRadius (px 50.0) (px 50.0) (px 50.0) (px 50.0)
            justifyContent spaceAround
          
        ]
        [ HH.img
          -- FIXME: can we style the pleaceholder ? 
            [ HP.src magnifyingGlass
            , CSS.style do 
                  width $ px 25.0
                  height $ px 25.0
                  margin (px 10.0) (px 5.0) (px 10.0) (px 10.0)
             ]
        , HH.input
            -- FIXME: could not get it work with PS: border none, outline none
            -- so used new-input-bar css 
            [ HP.placeholder placeholder
            , css "new-input-bar"
            , CSS.style do
                color violet
                width $ pct 85.0
                height $ px 50.0
                fontSize (case str of "" -> px 15.0
                                      _  -> px 30.0)
                borderRadius (px 50.0) (px 50.0) (px 50.0) (px 50.0)
            , HE.onValueInput \string -> DoSearch string
            ]
        ]
    ]
    