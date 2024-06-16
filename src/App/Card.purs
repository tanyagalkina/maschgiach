module App.Curtain (curtain, card, newCard) where

import Prelude

import Affjax.Web (get)
import Ansi.Output (background)
import App.Assets (back)
import App.Colours (black, green, lightred, marine, orangad, white, yellow)
import App.Common (Action(..), CardDisplayLanguage(..))
import App.ShowResults (getBackgroundForKashrut)
import CSS (alignItems, backgroundColor, bold, border, borderRadius, color, column, direction, display, flex, flexDirection, flexGrow, fontSize, fontWeight, height, margin, marginBottom, marginLeft, marginRight, marginTop, minHeight, pct, px, solid, width)
import CSS.Color (Color(..))
import CSS.Common (center)
import CSS.Font (fontFamily, monospace)
import CSS.Overflow (overflowY, overflow, overflowAuto, overflowInherit)
import Data.Array (fromFoldable, elem)
import Data.ENumberTypes (ENumber, Kashrut(..))
import Data.ENumberTypes (Kashrut(..))
import Data.Head (showK, showKFrench, showKGerman, showKHebrew, showKLatvian, showKRussian)
import Data.Maybe (Maybe(Just, Nothing))
import Data.NonEmpty ((:|))
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


-- FIXME: rm open Boolean of not needed
card :: forall w. Boolean -> ENumber -> CardDisplayLanguage -> HH.HTML w Action
card open e_number lang =
  HH.div [
                     CSS.style do
                       display flex
                       flexDirection column
                       flexGrow 1.0
                       fontFamily ["Arial"] (monospace :|[] )
                       -- overflowY $ overflowAuto
                   ]
                   -- back button, description, kashrut
                   [
                    HH.div[
                      CSS.style do
                       minHeight $ (pct 30.0)
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
                          fontSize $ px 20.0
                          border solid (px 2.0) $ getBorderColor e_number
                          borderRadius (px 20.0) (px 20.0) (px 20.0) (px 20.0)
                          backgroundColor $ getBackgroundForKashrut e_number
                          color $ case e_number.kosher of NotKosher -> white
                                                          _ -> black
                      ][
                      -- FIXME: make real back sign
                        HH.text "< BACK"
                      ]
                      -- description
                      , HH.div
                         [
                         CSS.style do
                       margin (px 20.0 )   (px 10.0 )   (px 60.0 )  (px 10.0 ) 
                       fontSize $ px 20.0
                         ] 
                         [HH.text 
                         $ getTextFromENumber e_number lang
                         ]

                      -- kashrut  
                      ,HH.div[
                        CSS.style do
                          margin (px 60.0) (px 20.0) (px 40.0) (px 10.0)
                          fontSize $ px 20.0
                          fontWeight bold
                         ] [HH.text $ getKashrutFromENumber e_number lang]
                      ]
                      , legend
]
legend:: forall w46 . HH.HTML w46 Action
legend = 
    HH.div [
                    CSS.style do
                      display flex
                      flexGrow 1.0
                      overflowY $ overflowAuto
                      flexDirection column
                      -- FIXME: rm after testing
                      -- border solid (px 2.0) lightred
                      marginTop (px 20.0)

                  ] $ map renderListItem listItems

getBorderColor :: ENumber -> Color
getBorderColor e_number = case e_number.kosher of 
  NotKosher -> orangad
  KosherIncludingPassover -> marine
  KosherNeedPassoverHashgoho -> green
  UsuallyKosherRarelyNeedHashgoho -> marine
  OftenKosherNeedHashgoho -> black
  NeedHashgohoWholeYear -> white
  KosherForbidden -> orangad

--  HH.div 
--    [ CSS.style do
--         overflowY $ overflowAuto
--         flexGrow 1.0
--         height (pct 100.0)
--         fontFamily ["Arial"] (monospace :|[] )
--         fontSize (px 20.0)
--    ] $
--     map (\eNumber -> renderENumber eNumber lang) (fromFoldable arr)

type ListItem =
  { color :: Color
  , text :: String
  }


-- NotKosher -> black   
--         KosherIncludingPassover -> green
--         KosherNeedPassoverHashgoho -> marine
--         UsuallyKosherRarelyNeedHashgoho -> yellow
--         OftenKosherNeedHashgoho -> orange
--         NeedHashgohoWholeYear -> orangad
--         -- KosherForbidden -> brightred
--         KosherForbidden -> lightred

listItems :: Array ListItem
listItems =
  [ { color: green, text: "Kosher including Passover" }
  , { color: marine, text: "Kosher, needs Hashgoho for Passover" }
  , { color: orangad, text: "Needs Hashgoho whole year" }
  , { color: black, text: "Not Kosher!" }
  , { color: lightred, text: "Kosher, FORBIDDEN" }
  ]


-- renderENumber :: forall w . ENumber -> CardDisplayLanguage -> HH.HTML w Action
renderListItem :: forall w. ListItem -> HH.HTML w Action
renderListItem myItem =
  HH.div
    [ CSS.style do
        display flex
        alignItems center
        marginBottom (px 10.0)
        -- backgroundColor myItem.color
    ]
    [ HH.div
        [ CSS.style do
            width (px 20.0)
            height (px 20.0)
            backgroundColor myItem.color
            borderRadius (px 50.0) (px 50.0) (px 50.0) (px 50.0)
            -- borderRadius (pct 50.0)
            -- margin (px 10.0) (px 10.0) (px 10.0) (px 10.0)
        ]
        []
    , HH.span [CSS.style do marginLeft (px 10.0)]
        [ HH.text myItem.text ]
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