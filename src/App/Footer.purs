module App.Footer (footer) where

import Halogen.HTML as HH
import App.Common (css)

footer :: forall w i. HH.HTML w i
footer = HH.div
          [ css "footer" ]
          [
            HH.div [css "footer-text"] [ HH.text "© 2024. Copy-paste production" ]
            , HH.div [css "footer-line"] []
            , HH.div [css "resources"] [HH.text "We love Israel"]
          ]