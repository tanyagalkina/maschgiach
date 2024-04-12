module App.LanguageIcon ( languageIcon ) where

import Prelude

import App.Common (Action(..), CardDisplayLanguage(..))
import CSS (marginLeft, marginTop, marginBottom, pct, em, width, height, px)
import Data.List.Internal (Set)
import Halogen.HTML (fromPlainHTML)
import Halogen.HTML as HH
import Halogen.HTML.CSS as CSS
import Halogen.HTML.Events (onClick, onInput)
import Halogen.HTML.Events as HE
import Halogen.HTML.Events as HE
import Halogen.HTML.Properties (InputType(..))
import Halogen.HTML.Properties as HP
import Web.DOM.Document (doctype)
import Web.DOM.ShadowRoot (ShadowRootMode(..))

-- css :: forall r i. String -> HH.IProp (class :: String | r) i
-- css = HP.class_ <<< HH.ClassName


languageIcon :: CardDisplayLanguage -> forall w . HH.HTML w Action
languageIcon lang = HH.div [
            CSS.style do
             marginLeft $ pct 90.0
             marginTop $ em 2.0
             marginBottom $ em 2.0
         ]
         [
          HH.img 
          [
            CSS.style do 
             width $ px 40.0
             height $ px 40.0
          --  , chooseIcon lang  
          , HP.src (chooseIcon lang)
        -- "../assets/ivrit3.png"
           , HP.alt "language"
           -- the language will be ignored for now, the button will switch toi the nex in the list
           , HE.onClick $ \_ -> SetCardDisplayLanguage English
          ]
          -- , HH.div [
          --   CSS.style do
          --    marginLeft $ pct 10.0
          --    marginTop $ em 1.0
          --    marginBottom $ em 1.0
          -- ]
          -- [ HH.text "עברית" ]
         ] 


chooseIcon :: CardDisplayLanguage -> String
chooseIcon lang = case lang of 
                    English -> "../assets/english.png"
                    Russian -> "../assets/russian.png"
                    German -> "../assets/german.png"
                    Hebrew -> "../assets/ivrit3.png"
                    French -> "../assets/french.png"
                    Latvian -> "../assets/latvian.png"
                                