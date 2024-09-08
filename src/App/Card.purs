module App.Card (card) where

import Prelude

import CSS (alignItems, backgroundColor, bold, border, borderRadius, color, column, display, flex, flexDirection, flexGrow, fontSize, fontStyle, fontWeight, margin, marginRight, minHeight, padding, pct, px, solid)
import CSS.Color (Color)
import CSS.Common (center)
import CSS.Font (fontFamily, monospace)
import CSS.FontStyle (italic)

import Halogen.HTML as HH
import Halogen.HTML.CSS as CSS
import Halogen.HTML.Events as HE
import Halogen.HTML.Properties as HP

import App.Assets (backArrowBlack, backArrowWhite)
import App.Colours (black, green, grey, orangad, white, yellow)
import App.Common (Action(..), CardDisplayLanguage(..), css)
import App.ShowResults (getBackgroundForKashrut)
import Data.ENumberTypes (ENumber, Kashrut(..))
import Data.Head (showK, showKFrench, showKGerman, showKHebrew, showKLatvian, showKRussian, showGroup)
import Data.NonEmpty ((:|))

card :: forall w. ENumber -> CardDisplayLanguage -> HH.HTML w Action
card e_number lang =
  HH.div
    [ css "fade-in-card"
    , HP.id "open-card"
    , CSS.style do
        display flex
        flexDirection column
        flexGrow 1.0
        fontFamily ["Arial"] (monospace :|[])
    ]
    [ HH.div
        [ CSS.style do
            minHeight $ pct 100.0
            color $ case e_number.kosher of
              NotKosher       -> white
              MostlyNotKosher -> white
              _               -> black
            backgroundColor $ getBackgroundForKashrut e_number
        ]
        [ -- back button
          HH.button
            [ HP.id "back-button"
            , HE.onClick $ \_ -> ClearCard
            , CSS.style do
                padding (px 5.0) (px 15.0) (px 5.0) (px 10.0)
                margin (px 20.0) (px 10.0) (px 10.0) (px 20.0)
                fontSize $ px 20.0
                display flex
                alignItems center
                border solid (px 2.0) $ getBorderColor e_number
                borderRadius (px 20.0) (px 20.0) (px 20.0) (px 20.0)
                color $ case e_number.kosher of
                  NotKosher       -> white
                  MostlyNotKosher -> white
                  _               -> black
            ]
            [ HH.img
                [ HP.src $ case e_number.kosher of
                    NotKosher       -> backArrowWhite
                    MostlyNotKosher -> backArrowWhite
                    _               -> backArrowBlack
                , CSS.style do
                    marginRight $ px 10.0
                ]
            , HH.text $ getBackText lang
            ]
        , HH.div
            [ CSS.style do
                margin (px 20.0) (px 10.0) (px 20.0) (px 20.0)
                fontSize $ px 20.0
            ]
            [ HH.text $ getTextFromENumber e_number lang
            ]
        , -- TODO: implement display of group and sources
          HH.div
            [ CSS.style do
                margin (px 10.0) (px 10.0) (px 20.0) (px 20.0)
                fontSize $ px 20.0
                fontWeight bold
                fontStyle italic
                color $ getBorderColor e_number
            ]
            [ HH.text $ getGroupFromENumber e_number lang
            ]
        , HH.div
            [ CSS.style do
                margin (px 60.0) (px 20.0) (px 20.0) (px 20.0)
                fontSize $ px 20.0
                fontWeight bold
            ]
            [ HH.text $ getKashrutFromENumber e_number lang
            ]
        -- , legend
        ]
    ]


getBorderColor :: ENumber -> Color
getBorderColor e_number = case e_number.kosher of 
  NotKosher                        -> orangad
  MostlyNotKosher                  -> orangad
  KosherIncludingPassover          -> grey
  KosherNeedPassoverHashgoho       -> yellow
  KosherChametz                    -> orangad
  UsuallyKosherRarelyNeedsHashgoho -> white
  OftenKosherNeedHashgoho          -> green
  NeedHashgohoWholeYear            -> white
  NeedHashgohoWholeYearSomeAllow   -> grey
  KosherForbidden                  -> orangad
  IssuficientData                  -> yellow


getBackText :: CardDisplayLanguage -> String
getBackText lang = case lang of
  English   -> "BACK"
  Russian   -> "НАЗАД"
  German    -> "ZURÜCK"
  Hebrew    -> "חזור"
  French    -> "RETOUR"
  Latvian   -> "ATPAKAĻ"

getGroupFromENumber :: ENumber -> CardDisplayLanguage -> String
getGroupFromENumber e lang = showGroup e.group lang

getTextFromENumber :: ENumber -> CardDisplayLanguage -> String
getTextFromENumber e lang = e.e_number <>  " " <> (getTextByLanguage e lang)

getTextByLanguage :: ENumber -> CardDisplayLanguage -> String
getTextByLanguage e lang = case lang of
  English      -> e.name_english
  Russian      -> e.name_russian
  German       -> e.name_german
  Hebrew       -> e.name_hebrew
  French       -> e.name_french
  Latvian      -> e.name_latvian


getKashrutFromENumber :: ENumber -> CardDisplayLanguage -> String
getKashrutFromENumber e_number lang = 
    getKashrutByLanguage e_number lang

getKashrutByLanguage :: ENumber -> CardDisplayLanguage -> String
getKashrutByLanguage e lang = case lang of
  English       -> showK e.kosher
  Russian       -> showKRussian e.kosher
  German        -> showKGerman e.kosher
  Hebrew        -> showKHebrew e.kosher
  French        -> showKFrench e.kosher
  Latvian       -> showKLatvian e.kosher


-- TODO: keeping this snippet as reminder to make the splash screen
-- curtain :: forall w . Boolean -> HH.HTML w Action
-- curtain open =
--   HH.div
--     [ HP.classes $ getCurtainClassList open ]
--     [ HH.div
--         [ HP.id "curtain-content-one"
--           , CSS.style do
--               margin (px 0.0 )   (px 10.0 )   (px 60.0 )  (px 10.0 ) 
--               fontSize $ px 30.0
--         ]
--         [HH.text " This ENumber Dictionary is based on Sefer Mahor LeKaschrut and on Sefer of Rabbi Pantelyat; it is not exhaustive and is meant to be used as a reference only. For more information, please consult a competent Halachic authority."
--         ]
--     , HH.div
--         [ HP.id "curtain-content-two"
--         , CSS.style do
--             margin (px 60.0) (px 20.0) (px 40.0) (px 10.0)
--             fontSize $ px 20.0
--         ]
--         [HH.text "One more text piece which we want to render into our Disclaimer Screen"]
--     ]

-- getCurtainClassList :: Boolean -> Array HH.ClassName
-- getCurtainClassList moveCurtain = 
--  [HH.ClassName "curtain"] <> if moveCurtain then [HH.ClassName "curtain-move-right"] else []