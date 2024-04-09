module App.Curtain (curtain, card) where

import Prelude
import Data.Maybe (Maybe(Just, Nothing))
import Halogen.HTML as HH
import App.Common (Action(..))
import Data.ENumberTypes(ENumber)
import Halogen.HTML.Properties as HP
import Halogen.HTML.CSS as CSS
import Halogen.HTML.Events as HE
import CSS (paddingTop, paddingRight, paddingLeft, margin, fontSize, pct, px)


card :: forall w. Boolean -> Maybe ENumber -> HH.HTML w Action
card open e_number =  HH.div [ 
                   HP.classes $ getCardClassList open
                   
                    --   TODO: clean the styles
                    ,CSS.style do
                       paddingTop $ pct 7.0
                       paddingRight $ px 40.0
                       paddingLeft $ px 70.0
                      --  alignItems flexStart
                    , HE.onClick $ \_ -> ClearCard 
                   ]
                   [
                    HH.div[
                     HP.id "curtain-content-one"
                     , CSS.style do
                       margin (px 0.0 )   (px 10.0 )   (px 60.0 )  (px 10.0 ) 
                       fontSize $ px 30.0
                    ] 
                    [HH.text 
                    $ getTextFromENumber e_number
                    -- "ENumber: this is the ENumber" <> e_number.name -- e_number
                    -- " This ENumber Dictionary is based on Sefer Mahor LeKaschrut and on Sefer of Rabbi Pantelyat; it is not exhaustive and is meant to be used as a reference only. For more information, please consult a competent Halachic authority."
                    ]

                    ,HH.div[
                      HP.id "curtain-content-two"
                      , CSS.style do
                        margin (px 60.0) (px 20.0) (px 40.0) (px 10.0)
                        fontSize $ px 20.0
                    ] [HH.text "not implemented card"]
                  ]



getTextFromENumber :: Maybe ENumber -> String
getTextFromENumber e_number = 
  case e_number of
    Just e -> e.name <> " " <> e.description
    Nothing -> "No ENumber Selected"


curtain :: forall w . Boolean -> HH.HTML w Action
curtain open =  HH.div [ 
                   HP.classes $ getCurtainClassList open
                    --   TODO: clean the styles
                    -- ,CSS.style do
                    --    paddingTop $ pct 7.0
                    --    paddingRight $ px 40.0
                    --    paddingLeft $ px 70.0
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



getCardClassList :: Boolean -> Array HH.ClassName
getCardClassList moveCurtain = 
 [HH.ClassName "card-visible"] <> if moveCurtain then [] else [HH.ClassName "card-invisible"]
getCurtainClassList :: Boolean -> Array HH.ClassName
getCurtainClassList moveCurtain = 
 [HH.ClassName "curtain"] <> if moveCurtain then [HH.ClassName "curtain-move-right"] else []
