module App.Curtain (curtain) where

import Prelude
import Halogen.HTML as HH
import App.Common (Action)
import Halogen.HTML.Properties as HP
import Halogen.HTML.CSS as CSS
import CSS (paddingTop, paddingRight, paddingLeft, margin, fontSize, pct, px)

curtain :: forall w . Boolean -> HH.HTML w Action
curtain open =  HH.div [ 
                   HP.classes $ getCurtainClassList open
                    --   TODO: clean the styles
                    ,CSS.style do
                       paddingTop $ pct 7.0
                       paddingRight $ px 40.0
                       paddingLeft $ px 70.0
                      --  alignItems flexStart
                   ]
                   [
                    HH.div[
                     HP.id "curtain-content-one"
                     , CSS.style do
                       margin (px 0.0 )   (px 10.0 )   (px 60.0 )  (px 10.0 ) 
                       fontSize $ px 30.0
                    ] [HH.text " This ENumber Dictionary is based on Sefer Mahor LeKaschrut and on Sefer of Rabbi Pantelyat; it is not exhaustive and is meant to be used as a reference only. For more information, please consult a competent Halachic authority."]

                    ,HH.div[
                      HP.id "curtain-content-two"
                      , CSS.style do
                        margin (px 60.0) (px 20.0) (px 40.0) (px 10.0)
                        fontSize $ px 20.0
                    ] [HH.text "One more text piece which we want to render into our Disclaimer Screen"]
                  ]

getCurtainClassList :: Boolean -> Array HH.ClassName
getCurtainClassList moveCurtain = 
 [HH.ClassName "curtain"] <> if moveCurtain then [HH.ClassName "curtain-move-right"] else []
