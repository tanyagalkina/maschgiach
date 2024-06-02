module App.Footer (footer, newFooter) where


import Prelude
import App.Colours (brown, violet)
import App.Common (css)
import CSS (border, px, solid, height)
import Halogen.HTML as HH
-- FIXME: current what is meant by merging the lists of import ?
import CSS (backgroundColor)
import Halogen.HTML.CSS as CSS

newFooter :: forall w i. HH.HTML w i
newFooter = HH.div 
                   [
                    CSS.style do
                      border solid (px 2.0) brown
                      height $ (px 52.0)
                      backgroundColor violet
                      
                   ]
                    
                   -- [ css "footer" ]  
                   []    

footer :: forall w i. HH.HTML w i
footer = HH.div
          [ css "footer" ]
          [
            HH.div [css "footer-text"] [ HH.text "© 2024. Copy-paste production" ]
            , HH.div [css "footer-line"] []
            , HH.div [css "resources"] [HH.text "We love Israel"]
          ]

