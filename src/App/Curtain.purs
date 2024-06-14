module App.Curtain (curtain, card, newCard) where

import Prelude

import Affjax.Web (get)
import Ansi.Output (background)
import App.Colours (black, lightred, white)
import App.Common (Action(..), CardDisplayLanguage(..))
import Data.ENumberTypes ( Kashrut(..))
import App.ShowResults (getBackgroundForKashrut)
import CSS (border, column, direction, display, flex, flexDirection, flexGrow, fontSize, height, margin, minHeight, px, solid, backgroundColor, borderRadius, color, fontWeight, bold, pct)
import CSS.Overflow (overflowY, overflow, overflowAuto, overflowInherit)
import Data.ENumberTypes (ENumber)
import Data.Head (showK, showKFrench, showKGerman, showKHebrew, showKLatvian, showKRussian)
import Data.Maybe (Maybe(Just, Nothing))
import Halogen.HTML as HH
import Halogen.HTML.CSS as CSS
import Halogen.HTML.Events as HE
import Halogen.HTML.Properties as HP
import Web.HTML.History (back)


newCard :: forall w. Boolean -> Maybe ENumber -> CardDisplayLanguage -> HH.HTML w Action
newCard open e_number lang =  HH.div [ 
                   HP.classes $ getCardClassList open
                   , HE.onClick $ \_ -> ClearCard 
                   ]
                   []


-- FIXME: rm open Boolean of not needed
card :: forall w. Boolean -> ENumber -> CardDisplayLanguage -> HH.HTML w Action
card open e_number lang =  HH.div [
                     CSS.style do
                       display flex
                       flexDirection column
                       flexGrow 1.0
                       -- overflowY $ overflowAuto
                   ]
                   [
                    -- back button, description, kashrut
                    HH.div[
                      CSS.style do
                       minHeight $ (pct 40.0)
                       color $ case e_number.kosher of NotKosher -> white
                                                       _ -> black
                       backgroundColor $ getBackgroundForKashrut e_number
                       borderRadius (px 0.0) (px 0.0) (px 40.0) (px 0.0)
                       
                        
                    ]
                    [
                      -- back button
                      HH.button[
                        HP.id "back-button"
                        , HE.onClick $ \_ -> ClearCard
                        , CSS.style do
                          margin (px 10.0) (px 10.0) (px 10.0) (px 10.0)
                          fontSize $ px 30.0
                      ] [HH.text "Back"]
                    , HH.div[
                     -- HP.id "curtain-content-one"
                     CSS.style do
                       margin (px 0.0 )   (px 10.0 )   (px 60.0 )  (px 10.0 ) 
                       fontSize $ px 20.0
                    ] 
                    [HH.text 
                    $ getTextFromENumber e_number lang
                    ]
                    ,HH.div[
                      -- HP.id "curtain-content-two"
                      CSS.style do
                        margin (px 60.0) (px 20.0) (px 40.0) (px 10.0)
                        fontSize $ px 20.0
                        fontWeight bold
                    ] [HH.text $ getKashrutFromENumber e_number lang]
                  ]
                  -- ledend
                  , HH.div[
                    CSS.style do
                      display flex
                      flexGrow 1.0
                      overflowY $ overflowAuto
                      flexDirection column
                      border solid (px 2.0) lightred

                  ][]
]

getTextFromENumber :: ENumber -> CardDisplayLanguage -> String
getTextFromENumber e lang = e.e_number <>  " " <> (getTextByLanguage e lang)  <> " " <> e.description

getTextByLanguage :: ENumber -> CardDisplayLanguage -> String
getTextByLanguage e lang = case lang of
  English -> e.name_english
  Russian -> e.name_russian
  German -> e.name_german
  Hebrew -> e.name_hebrew
  French -> e.name_french
  Latvian -> e.name_latvian


getKashrutFromENumber :: ENumber -> CardDisplayLanguage -> String
getKashrutFromENumber e_number lang = 
    getKashrutByLanguage e_number lang

getKashrutByLanguage :: ENumber -> CardDisplayLanguage -> String
getKashrutByLanguage e lang = case lang of
  English -> showK e.kosher
  Russian -> showKRussian e.kosher
  German -> showKGerman e.kosher
  Hebrew -> showKHebrew e.kosher
  French -> showKFrench e.kosher
  Latvian -> showKLatvian e.kosher

curtain :: forall w . Boolean -> HH.HTML w Action
curtain open =  HH.div [ 
                   HP.classes $ getCurtainClassList open
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

                    -- "ENumber: this is the ENumber" <> e_number.name -- e_number
                    -- " This ENumber Dictionary is based on Sefer Mahor LeKaschrut and on Sefer of Rabbi Pantelyat; it is not exhaustive and is meant to be used as a reference only. For more information, please consult a competent Halachic authority."