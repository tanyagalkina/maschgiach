module App.LanguageIcon ( languageIcon ) where

import Prelude
import Halogen.HTML (fromPlainHTML)
import Halogen.HTML as HH
import Halogen.HTML.CSS as CSS
import Halogen.HTML.Events (onClick, onInput)
import Halogen.HTML.Events as HE
import Halogen.HTML.Properties (InputType(..))
import Halogen.HTML.Properties as HP
import Web.DOM.Document (doctype)
import Web.DOM.ShadowRoot (ShadowRootMode(..))
import CSS(marginLeft, marginTop, pct, em, width, height, px)


import App.Common( Action(..) )
-- css :: forall r i. String -> HH.IProp (class :: String | r) i
-- css = HP.class_ <<< HH.ClassName


languageIcon :: forall w . HH.HTML w Action
languageIcon = HH.div [
            CSS.style do
             marginLeft $ pct 90.0
             marginTop $ em 2.0
         ]
         [HH.img 
          [
            CSS.style do 
             width $ px 40.0
             height $ px 40.0
           , HP.src "../assets/ivrit3.png"
          , HP.alt "language"
          ]
         ] 
