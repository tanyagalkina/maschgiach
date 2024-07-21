module App.ShowResults (showResults, resultsAndCard, getBackgroundForKashrut) where

import Prelude

import App.Assets (rightArrow, rightArrowWhite)
import App.Colours (black, brightred, green, lightred, darkergreen, orangad, orange, skyblue, white, yellow, lightblue, grey, whitened, mediumgrey)
import App.Common (Action(..), CardDisplayLanguage(English, Russian, German, Hebrew, French, Latvian), css)
import CSS (Color, alignItems, backgroundColor, border, borderBottom, borderLeft, color, display, em, flex, flexGrow, fontSize, height, justifyContent, margin, marginLeft, marginRight, maxWidth, minWidth, pct, px, solid, space, spaceBetween, width)
import CSS.Common (center, auto)
import CSS.Font (fontFamily, monospace)
import CSS.Overflow (overflowY, overflowX, overflow, overflowAuto, overflowInherit)
import Data.Array (fromFoldable, elem)
import Data.ENumberTypes (ENumber, ENumberList, Kashrut(..), Source(..))
import Data.Lens (over)
import Data.NonEmpty ((:|))
import Halogen.HTML as HH
import Halogen.HTML.CSS as CSS
import Halogen.HTML.Events as HE
import Halogen.HTML.Properties as HP
import Web.HTML.Event.EventTypes (offline)


resultsAndCard :: forall w. ENumberList -> CardDisplayLanguage -> HH.HTML w Action
resultsAndCard arr lang = HH.div [
  CSS.style do
    -- FIXME: why is it 100 px ???
    height (px 100.0)
    -- border solid (px 2.0) black
    flexGrow 1.0
] [showResults arr lang, HH.div [] []]

showResults :: forall w. ENumberList -> CardDisplayLanguage -> HH.HTML w Action
showResults arr lang =
  HH.div 
   [ css "fade-in"
    ,HP.id "results-list"
    ,CSS.style do
        overflowY $ overflowAuto
        flexGrow 1.0
        height (pct 100.0)
        fontFamily ["Arial"] (monospace :|[] )
        fontSize (px 20.0)
   ] $
    map (\eNumber -> renderENumber eNumber lang) (fromFoldable arr)


renderENumber :: forall w . ENumber -> CardDisplayLanguage -> HH.HTML w Action
renderENumber eNumber lang =
    HH.div
        [ 
          HE.onClick $ \_ -> OpenCard eNumber 
          , css "simple-result"
          ,CSS.style do
            height (px 56.0)
            color (case eNumber.kosher of
              NotKosher -> white
              MostlyNotKosher -> white
              _ -> black)

            display flex
            justifyContent spaceBetween 
            alignItems center 
            backgroundColor $ getBackgroundForKashrut eNumber
          -- borderLeft solid (em $ 0.3) $ getBackgroundForKashrut eNumber 
          -- borderBottom solid (em $ 0.1) $  getBackgroundForKashrut eNumber 
            borderBottom solid (px $ 0.1) $ case eNumber.kosher of
                                                          NotKosher -> grey
                                                          MostlyNotKosher -> grey
                                                          -- KosherIncludingPassover -> whitened
                                                          _ -> white
         -- margin (px 5.0) (px 5.0) (px 5.0) (px 5.0)
          ]
        [HH.span 
           [
            css "simple-result-text"
            , CSS.style do
              flexGrow 1.0
              -- minWidth (pct 90.0)
              maxWidth (pct 85.0) -- FIXME: is this correct ?
              marginLeft (px 40.0)
              -- overflowX $ overflowInherit
           ]  
           [ HH.text (eNumber.e_number <> " " <> (getNameByLanguage eNumber lang))
           ]
          -- , HH.span_ [
          --     HH.text "" 
          -- ] 
          , HH.img
            [ HP.src (case eNumber.kosher of NotKosher -> rightArrowWhite
                                             MostlyNotKosher -> rightArrowWhite
                                             _  -> rightArrow ) -- Path to your local icon
            , CSS.style do
            marginRight (px 10.0)
            width (px 25.0)
            height (px 25.0)
        ]
        ]

getNameByLanguage :: ENumber -> CardDisplayLanguage -> String
getNameByLanguage card lang = case lang of
    English -> card.name_english
    Russian -> card.name_russian
    German -> card.name_german
    Hebrew -> card.name_hebrew
    French -> card.name_french
    Latvian -> card.name_latvian

getBackgroundForKashrut :: ENumber -> Color
getBackgroundForKashrut k =   
    case k.kosher of
        NotKosher -> black
        MostlyNotKosher -> black   
        KosherIncludingPassover -> green
        KosherNeedPassoverHashgoho -> darkergreen
        KosherChametz -> darkergreen
        UsuallyKosherRarelyNeedsHashgoho -> lightblue
        OftenKosherNeedHashgoho -> skyblue
        NeedHashgohoWholeYearSomeAllow -> yellow
        NeedHashgohoWholeYear -> orangad
        -- KosherForbidden -> brightred
        KosherForbidden -> lightred
        IssuficientData -> grey


-- containsDairy:: Array Source -> Boolean
-- containsDairy arr = elem Dairy arr  

