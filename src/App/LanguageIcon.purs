module App.LanguageIcon ( languageIcon, headerWithLangSwitches ) where

import Prelude

import App.Assets (englishIcon, frenchIcon, germanIcon, hebrewIcon, latvianIcon, russianIcon)
import App.Colours (red)
import App.Common (Action(..), CardDisplayLanguage(..))
import CSS (border, em, header, height, marginBottom, marginLeft, marginTop, pct, px, solid, top, width)
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
            --  marginLeft $ pct 90.0
            top $ px 0.0
            height $ px 92.0
            -- width $ px 428.0
            --  marginBottom $ em 1.5 
            border solid (px $ 2.0) red
         ]
         [
          HH.div[
            CSS.style do
              width $ pct 100.0
              height $ px 100.0
              top $ px 0.00

          ]
          []
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


chooseIcon :: CardDisplayLanguage -> String
chooseIcon lang = case lang of 
                    English -> englishIcon
                    Russian -> russianIcon
                    German -> germanIcon
                    Hebrew -> hebrewIcon
                    French -> frenchIcon
                    Latvian -> latvianIcon
                                