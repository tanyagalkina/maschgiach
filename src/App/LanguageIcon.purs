module App.LanguageIcon ( languageIcon ) where

import Prelude

import App.Assets (englishIcon, frenchIcon, germanIcon, hebrewIcon, latvianIcon, russianIcon)
import App.Common (Action(..), CardDisplayLanguage(..))
import CSS (marginLeft, marginTop, marginBottom, pct, em, width, height, px)
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


chooseIcon :: CardDisplayLanguage -> String
chooseIcon lang = case lang of 
                    English -> englishIcon
                    Russian -> russianIcon
                    German -> germanIcon
                    Hebrew -> hebrewIcon
                    French -> frenchIcon
                    Latvian -> latvianIcon
                                