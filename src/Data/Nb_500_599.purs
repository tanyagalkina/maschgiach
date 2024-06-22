-- pH Regulators & antiCaking Agents (500-599)

module Data.Nb500to599 (regulatorENumberList) where

import Prelude

import Data.ENumberTypes (AdditiveGroup(..), ENumber, ENumberList, Kashrut(..), Source(..), emptyENumberList, insertEntry)

-- import Data.Number (e)

infixr 5 insertEntry as ++

regulatorENumberList :: ENumberList
regulatorENumberList =  e500 ++ e575 ++ emptyENumberList

e500 :: ENumber
e500 = {
  name_english: "Sodium Carbonate Sodium hydrogen carbonate (Sodium bicarbonate; Baking soda; Bicabonate of soda) "
  , name_russian: "Углекислый натрий, гидрокарбонат натрия (натрий бикарбонат, пищевая сода)"
  , name_german: "Natriumcarbonat, Natriumhydrogencarbonat (Natron, Backsoda, Speisesoda)"
  , name_hebrew: "סודיום קרבונט, סודיום הידרוגנקרבונט (סודיום ביקרבונט, סודיום קרבונט, סודיום קרבונט)"
  , name_french: "Carbonate de sodium, Hydrogénocarbonate de sodium (Bicarbonate de soude)"
  , name_latvian: "Nātrija karbonāts, Nātrija hidrogēnkarbonāts (Soda, Sālsoda)"
 <> "Sodium sesquicarbonate (Trona), "
 <> "Natriumcarbonat (Soda)" 
  , e_number: "E500"
  , group: AcidityRegulator 
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e575 :: ENumber
e575 = {
  name_english: "Glucono-delta-lactone"
  , name_russian: "Глюконо дельта-лактон"
  , name_german: "Glucono-delta-lacton"
  , name_hebrew: "גלוקונו-דלטה-לקטון"
  , name_french: "Glucono-delta-lactone"
  , name_latvian: "Glucono-delta-laktons"
  , e_number: "E575"
  , group: AcidityRegulator
  , source: []
  , description: ""
  , kosher: OftenKosherNeedHashgoho
}
