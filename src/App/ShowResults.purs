module App.ShowResults (showResults, resultsAndCard) where

import Prelude

import App.Assets (rightArrow, rightArrowWhite)
import App.Colours (green, marine, skyblue, brightred, yellow, orange, black, lightred, white)
import App.Common (Action(..), CardDisplayLanguage(English, Russian, German, Hebrew, French, Latvian), css)
import CSS (Color, alignItems, backgroundColor, border, borderBottom, borderLeft, color, display, em, flex, flexGrow, fontSize, height, justifyContent, margin, marginLeft, marginRight, maxWidth, pct, px, solid, space, spaceBetween,
width)
import CSS.Common (center, auto)
import CSS.Font (fontFamily, monospace)
import CSS.Overflow (overflowY, overflow, overflowAuto, overflowInherit)
import Data.Array (fromFoldable, elem)
import Data.ENumberTypes (ENumber, ENumberList, Kashrut(..), Source(..))
import Data.NonEmpty ((:|))
import Data.Lens (over)
import Halogen.HTML as HH
import Halogen.HTML.CSS as CSS
import Halogen.HTML.Events as HE
import Halogen.HTML.Properties as HP


resultsAndCard :: forall w. ENumberList -> CardDisplayLanguage -> HH.HTML w Action
resultsAndCard arr lang = HH.div [
  CSS.style do
    height (px 100.0)
    -- border solid (px 2.0) black
    flexGrow 1.0
] [showResults arr lang, HH.div [] []]

showResults :: forall w. ENumberList -> CardDisplayLanguage -> HH.HTML w Action
showResults arr lang =
  HH.div 
   [ CSS.style do
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
            height (px 94.0)
            color (case eNumber.kosher of
              NotKosher -> white
              _ -> black)

            display flex
            justifyContent spaceBetween 
            alignItems center 
            backgroundColor $ getBackgroundForKashrut eNumber
          -- borderLeft solid (em $ 0.3) $ getBackgroundForKashrut eNumber 
          -- borderBottom solid (em $ 0.1) $  getBackgroundForKashrut eNumber 
            borderBottom solid (px $ 2.0) $ white
         -- margin (px 5.0) (px 5.0) (px 5.0) (px 5.0)
          ]
        [HH.span 
           [
            CSS.style do
              flexGrow 1.0
              maxWidth (pct 90.0)
              marginLeft (px 40.0)
           ]  
           [ HH.text (eNumber.e_number <> " " <> (getNameByLanguage eNumber lang))
           ]
          -- , HH.span_ [
          --     HH.text "" 
          -- ] 
          , HH.img
            [ HP.src (case eNumber.kosher of NotKosher -> rightArrowWhite
                                             _  -> rightArrow ) -- Path to your local icon
            , CSS.style do
            marginRight (px 40.0)
            width (px 35.0)
            height (px 35.0)
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
getBackgroundForKashrut k = if (containsDairy k.source) then skyblue else  
    case k.kosher of
        NotKosher -> black   
        KosherIncludingPassover -> green
        KosherNeedPassoverHashgoho -> marine
        UsuallyKosherRarelyNeedHashgoho -> yellow
        OftenKosherNeedHashgoho -> orange
        NeedHashgohoWholeYear -> lightred
        KosherForbidden -> brightred


containsDairy:: Array Source -> Boolean
containsDairy arr = elem Dairy arr  

