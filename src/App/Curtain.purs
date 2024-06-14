module App.Curtain (curtain, card, newCard) where

import Prelude

import App.Common (Action(..), CardDisplayLanguage(..))
import CSS (fontSize, margin, px)
import Data.ENumberTypes (ENumber)
import Data.Head (showK, showKFrench, showKGerman, showKHebrew, showKLatvian, showKRussian)
import Data.Maybe (Maybe(Just, Nothing))
import Halogen.HTML as HH
import Halogen.HTML.CSS as CSS
import Halogen.HTML.Events as HE
import Halogen.HTML.Properties as HP


newCard :: forall w. Boolean -> Maybe ENumber -> CardDisplayLanguage -> HH.HTML w Action
newCard open e_number lang =  HH.div [ 
                   HP.classes $ getCardClassList open
                   , HE.onClick $ \_ -> ClearCard 
                   ]
                   []


card :: forall w. Boolean -> Maybe ENumber -> CardDisplayLanguage -> HH.HTML w Action
card open e_number lang =  HH.div [ 
                   -- HP.classes $ getCardClassList open
                    -- , HE.onClick $ \_ -> ClearCard 
                   ]
                   [
                    -- TODO: clean the styles here, it is not clear what is the purpose of the styles
                    HH.div[
                     -- HP.id "curtain-content-one"
                     CSS.style do
                       margin (px 0.0 )   (px 10.0 )   (px 60.0 )  (px 10.0 ) 
                       fontSize $ px 60.0
                    ] 
                    [HH.text 
                    $ getTextFromENumber e_number lang
                    -- "ENumber: this is the ENumber" <> e_number.name -- e_number
                    -- " This ENumber Dictionary is based on Sefer Mahor LeKaschrut and on Sefer of Rabbi Pantelyat; it is not exhaustive and is meant to be used as a reference only. For more information, please consult a competent Halachic authority."
                    ]
                    ,HH.div[
                      -- HP.id "curtain-content-two"
                       HE.onClick $ \_ -> ClearCard
                      , CSS.style do
                        margin (px 60.0) (px 20.0) (px 40.0) (px 10.0)
                        fontSize $ px 60.0
                    ] [HH.text $ getKashrutFromENumber e_number lang]
                  ]

getTextFromENumber :: Maybe ENumber -> CardDisplayLanguage -> String
getTextFromENumber e_number lang = 
  case e_number of
    Just e -> e.e_number <>  " " <> (getTextByLanguage e lang)  <> " " <> e.description
    Nothing -> "No ENumber Selected"

getTextByLanguage :: ENumber -> CardDisplayLanguage -> String
getTextByLanguage e lang = case lang of
  English -> e.name_english
  Russian -> e.name_russian
  German -> e.name_german
  Hebrew -> e.name_hebrew
  French -> e.name_french
  Latvian -> e.name_latvian


getKashrutFromENumber :: Maybe ENumber -> CardDisplayLanguage -> String
getKashrutFromENumber e_number lang = 
  case e_number of
    Just e -> (getKashrutByLanguage e lang)
    Nothing -> "No ENumber Selected"

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
