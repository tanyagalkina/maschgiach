module App.ShowResults (simpleShowResults) where

import Prelude

import App.Colours (green, marine, skyblue, brightred, yellow, orange, black, lightred)
import App.Common (Action(..), CardDisplayLanguage(English, Russian, German, Hebrew, French, Latvian), css)
import App.Curtain (card)
import CSS (Color, backgroundColor, borderLeft, borderRadius, color, em, maxHeight, minHeight, paddingTop, px, solid, vh, margin, borderBottom)
import Data.Array (fromFoldable, elem)
import Data.ENumberTypes (ENumber, ENumberList, Kashrut(..), Source(..))
import Data.Head (showSources, showK)
import Data.Int (toNumber)
import Data.List as List
import Data.Number (e)
import Halogen.HTML as HH
import Halogen.HTML.CSS as CSS
import Halogen.HTML.Events as HE
import Web.HTML.HTMLElement (lang)

-- showResults :: forall w . ENumberList -> cardDisplayLanguage -> HH.HTML w Action
-- showResults arr lang = 
--   HH.div [
--     css "results-bar"
--     -- ,CSS.style do
--     --  paddingTop $ em 1.0
--     -- minHeight $ vh (calculateMinHeight $ List.length arr)
--   ] $ map renderENumber (fromFoldable arr)


simpleShowResults :: forall w. ENumberList -> CardDisplayLanguage -> HH.HTML w Action
simpleShowResults arr lang =
  HH.div [ css "simple-results-bar" ] $
    map (\eNumber -> simpleRenderENumber eNumber lang) (fromFoldable arr)




simpleRenderENumber :: forall w . ENumber -> CardDisplayLanguage -> HH.HTML w Action
simpleRenderENumber eNumber lang =
    HH.div
        [ 
          HE.onClick $ \_ -> OpenCard eNumber 
          ,CSS.style do
          -- backgroundColor nogrey
          color black
          borderLeft solid (em $ 0.3) $ getBackgroundForKashrut eNumber 
          borderBottom solid (em $ 0.1) $  getBackgroundForKashrut eNumber 
          margin (px 5.0) (px 5.0) (px 5.0) (px 5.0)
            -- (backgroundColor $ (getBackgroundForKashrut eNumber))
            -- (color $ getColorForKashrut eNumber)
            -- my_style make reusable
          -- ,HE.onClick $ \_ -> CSS.style do
          --   backgroundColor brown
          ]
        [ HH.text (eNumber.e_number <> " " <> (getNameByLanguage eNumber lang))
        --  , HH.div [
        --   -- css "sources"
        --   --  , CSS.style do
        --   --  fontSize $ px 20.0
        --    ] [
        --        HH.text (showSources eNumber.source)
        --        ,HH.br_ 
        --       ,HH.text (showK eNumber.kosher)]]
        ]

-- renderENumber :: forall w . ENumber -> HH.HTML w Action
-- renderENumber eNumber =
--     HH.div
--         [ 
--           css "e-number-card"
--           -- css "button"
--           , CSS.style do
--           -- backgroundColor nogrey
--           color black
--           borderLeft solid (em $ 1.2) $ getBackgroundForKashrut eNumber 
--             -- (backgroundColor $ (getBackgroundForKashrut eNumber))
--             -- (color $ getColorForKashrut eNumber)
--             -- my_style make reusable
--           --, HE.onClick $ \_ -> OpenCard eNumber 
--           -- ,HE.onClick $ \_ -> CSS.style do
--           --   backgroundColor brown
--           ]
--         [ HH.text (eNumber.e_number <> " " <> (getNameByLanguage eNumber lang))
--          , HH.div [
--            css "sources"
--           --  , CSS.style do
--           --  fontSize $ px 20.0
--            ] [
--                HH.text (showSources eNumber.source)
--                ,HH.br_ 
--               ,HH.text (showK eNumber.kosher)]]
    


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


calculateMinHeight:: Int -> Number
calculateMinHeight 1 = 50.0
calculateMinHeight len = 15.0 * (toNumber len)

containsDairy:: Array Source -> Boolean
containsDairy arr = elem Dairy arr  

