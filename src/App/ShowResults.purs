module App.ShowResults (showResults, resultsAndCard) where

import Prelude

import App.Colours (green, marine, skyblue, brightred, yellow, orange, black, lightred)
import App.Common (Action(..), CardDisplayLanguage(English, Russian, German, Hebrew, French, Latvian), css)
import CSS (Color, border, borderBottom, borderLeft, color, em, flexGrow, height, margin, px, solid)
import Data.Array (fromFoldable, elem)
import Data.ENumberTypes (ENumber, ENumberList, Kashrut(..), Source(..))
import Halogen.HTML as HH
import Halogen.HTML.CSS as CSS
import Halogen.HTML.Events as HE


resultsAndCard :: forall w. ENumberList -> CardDisplayLanguage -> HH.HTML w Action
resultsAndCard arr lang = HH.div [
  CSS.style do
    height (px 100.0)
    border solid (px 2.0) black
    flexGrow 1.0
] [showResults arr lang, HH.div [] []]

showResults :: forall w. ENumberList -> CardDisplayLanguage -> HH.HTML w Action
showResults arr lang =
  HH.div [ css "simple-results-bar" ] $
    map (\eNumber -> renderENumber eNumber lang) (fromFoldable arr)


renderENumber :: forall w . ENumber -> CardDisplayLanguage -> HH.HTML w Action
renderENumber eNumber lang =
    HH.div
        [ 
          HE.onClick $ \_ -> OpenCard eNumber 
          ,CSS.style do
          color black
          borderLeft solid (em $ 0.3) $ getBackgroundForKashrut eNumber 
          borderBottom solid (em $ 0.1) $  getBackgroundForKashrut eNumber 
          margin (px 5.0) (px 5.0) (px 5.0) (px 5.0)
          ]
        [ HH.text (eNumber.e_number <> " " <> (getNameByLanguage eNumber lang))
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

