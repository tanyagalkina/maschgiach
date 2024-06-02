module App.LanguageIcon ( languageIcon, headerWithLangSwitches ) where

import Prelude

import App.Assets (englishIcon, frenchIcon, germanIcon, hebrewIcon, latvianIcon, russianIcon)
import App.Colours (brown, red, violet, green)
import App.Common (Action(..), CardDisplayLanguage(..))
import CSS (alignItems, bold, border, color, display, em, flex, flexDirection, fontFamily, fontSize, fontWeight, header, height, justifyContent, marginBottom, marginLeft, marginTop, opacity, pct, px, row, solid, spaceBetween, spaceAround, top, width)
import CSS.Common (center)
import CSS.Font (fontFamily, monospace)
import CSS.TextAlign (justify)
import Data.Align (align)
import Data.NonEmpty ((:|))
import Halogen.HTML as HH
import Halogen.HTML.CSS as CSS
import Halogen.HTML.Events as HE
import Halogen.HTML.Properties as HP

languageIcon :: CardDisplayLanguage -> forall w . HH.HTML w Action
languageIcon lang = HH.div [
            CSS.style do
             marginLeft $ pct 90.0
             marginTop $ em 2.0
             marginBottom $ em 1.5
         ]
         [
          HH.img 
          [
            CSS.style do 
             width $ px 60.0
             height $ px 60.0
          , HP.src (chooseIcon lang)
           , HP.alt "language"
           -- the language will be ignored for now, the button will switch to the nex in the list
           , HE.onClick $ \_ -> SetCardDisplayLanguage English
          ]
         ] 

headerWithLangSwitches :: CardDisplayLanguage -> forall w . HH.HTML w Action   
headerWithLangSwitches lang = HH.div [
            CSS.style do
            display flex
            -- flexDirection row is it default direction ? 
            alignItems center
            justifyContent spaceBetween -- FIXME: current:  is this needed? 
            --  marginLeft $ pct 90.0
            top $ px 0.0
            -- in Figma: height $ px 92.0 (46 + 46 + 46)
            height $ px 136.0
            -- width $ px 428.0
            --  marginBottom $ em 1.5 
            border solid (px $ 2.0) red
         ]
         [
          HH.div[
            CSS.style do
              fontFamily ["Arial"] (monospace :|[] )
              fontSize $ px 40.0
              fontWeight $ bold
              color $ violet
              border solid (px 2.0) brown
              -- marginTop $ px 60.0
              -- marginLeft $ px 20.0

            --   width $ pct 100.0
            --   height $ px 100.0
            --   top $ px 0.00

          ]
          [HH.text "MaschgiachApp"]
          , HH.div [
            CSS.style do
              border solid (px 4.0) green
              display flex
              alignItems center
              justifyContent spaceBetween
              -- Figma: width $ px 144.0 FIXME: current: clrearify absolute and relative sizes
              -- Figma: height $ px 25.0
              width $ px 300.0
              height $ px 50.0
            ]
            [
              HH.img 
                [
                  getLangIconStyle Hebrew lang
              , HP.src hebrewIcon  
              , HP.alt "language"
              , HE.onClick $ \_ -> SetCardDisplayLanguage Hebrew
              ]
               ,HH.img 
                [
                  getLangIconStyle German lang
                  , HP.src germanIcon  
                  , HP.alt "language" -- FIXME: current: what is this tag for ? 
                  -- the language will be ignored for now, the button will switch to the nex in the list
                  , HE.onClick $ \_ -> SetCardDisplayLanguage German

                ]
              , HH.img 
                [
                  getLangIconStyle English lang
                  , HP.src englishIcon  
                  , HP.alt "language"
                  -- the language will be ignored for now, the button will switch to the nex in the list
                  , HE.onClick $ \_ -> SetCardDisplayLanguage English

                ]
                , HH.img 
                [
                  getLangIconStyle Latvian lang
                  , HP.src latvianIcon  
                  , HP.alt "language" 
                  -- the language will be ignored for now, the button will switch to the nex in the list
                  , HE.onClick $ \_ -> SetCardDisplayLanguage Latvian

                ]
            ]
        --   HH.img 
        --   [
        --     CSS.style do 
        --      width $ px 60.0
        --      height $ px 60.0
        --   , HP.src (chooseIcon lang)
        --    , HP.alt "language"
        --    -- the language will be ignored for now, the button will switch to the nex in the list
        --    , HE.onClick $ \_ -> SetCardDisplayLanguage English

        --  ]
         ]

getLangIconStyle ∷ ∀ (i4 ∷ Type) (r5 ∷ Row Type). CardDisplayLanguage → CardDisplayLanguage → HP.IProp ( style ∷ String | r5 ) i4
getLangIconStyle buttonLang currentLang = CSS.style do 
                  width $ px 50.0
                  height $ px 50.0
                  --  opacity $ 0.5
                  opacity $ getOpacity buttonLang currentLang
getOpacity :: CardDisplayLanguage -> CardDisplayLanguage -> Number
getOpacity buttonLang currentLang = if buttonLang == currentLang then 1.0 else 0.3

chooseIcon :: CardDisplayLanguage -> String
chooseIcon lang = case lang of 
                    English -> englishIcon
                    Russian -> russianIcon
                    German -> germanIcon
                    Hebrew -> hebrewIcon
                    French -> frenchIcon
                    Latvian -> latvianIcon
                                