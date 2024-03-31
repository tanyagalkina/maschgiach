module App.ShowResults (showResults) where

import Prelude

import App.Colours (brown, green, lightgreen, nogrey, skyblue, softred, brightred, yellow, orange)
import App.Common (Action, css)
import CSS (Color, minHeight, maxHeight, backgroundColor, color, borderLeft, solid, em, vh)
import Data.Array (fromFoldable, elem)
import Data.Int (toNumber)
import Data.List as List
import Data.ListEnglish (ENumber, ENumberList, showSources, showK, Kashrut(..), Source(..))
import Halogen.HTML as HH
import Halogen.HTML.CSS as CSS

showResults :: forall w . ENumberList -> HH.HTML w Action
showResults arr = 
  HH.div [
    css "results-bar"

    ,CSS.style do
    -- minHeight $ px (toNumber (List.length arr) * 40.0)
    --   width $ pct 100.0
    minHeight $ vh (calculateMinHeight $ List.length arr)
    -- minHeight $ vh 60.0
    maxHeight $ vh 80.0
    -- minHeight $ vh 50.0
  ] $ map renderENumber (fromFoldable arr)

renderENumber :: forall w . ENumber -> HH.HTML w Action
renderENumber eNumber =
  -- HH.li [ css "my-list"]
    -- HH.button
    HH.div
        [ 
          css "e-number-card"
          -- css "button"
          , CSS.style do
          backgroundColor nogrey
          color brown
          borderLeft solid (em 0.7) $ getBackgroundForKashrut eNumber 
            -- (backgroundColor $ (getBackgroundForKashrut eNumber))
            -- (color $ getColorForKashrut eNumber)
            -- my_style make reusable
          --, HE.onClick $ \_ -> OpenCard eNumber 
          -- ,HE.onClick $ \_ -> CSS.style do
          --   backgroundColor brown
          ]
        [ HH.text (eNumber.name <> " " <> eNumber.e_number)
         , HH.div [
           css "sources"
          --  , CSS.style do
          --  fontSize $ px 20.0
           ] [
               HH.text (showSources eNumber.source)
               ,HH.br_ 
              ,HH.text (showK eNumber.kosher)]]
    

getBackgroundForKashrut :: ENumber -> Color
getBackgroundForKashrut k = if (containsDairy k.source) then skyblue else  
    case k.kosher of
        NotKosher -> softred   
        KosherIncludingPassover -> lightgreen
        KosherNeedPassoverHashgoho -> green
        UsuallyKosherRarelyNeedHashgoho -> yellow
        OftenKosherNeedHashgoho -> orange
        NeedHashgohoWholeYear -> softred
        KosherForbidden -> brightred


calculateMinHeight:: Int -> Number
calculateMinHeight 1 = 50.0
calculateMinHeight len = 15.0 * (toNumber len)

containsDairy:: Array Source -> Boolean
containsDairy arr = elem Dairy arr  

