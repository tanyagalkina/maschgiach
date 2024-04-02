-- pH Regulators & antiCaking Agents (500-599)

module Data.Nb500to599 (regulatorENumberList) where

import Prelude

import Data.ENumberTypes (AdditiveGroup(..), ENumber, ENumberList, Kashrut(..), Source(..), emptyENumberList, insertEntry)

-- import Data.Number (e)

infixr 5 insertEntry as ++

regulatorENumberList :: ENumberList
regulatorENumberList =  e500 ++ emptyENumberList

e500 :: ENumber
e500 = {
  name: "Sodium Carbonate Sodium hydrogen carbonate (Sodium bicarbonate; Baking soda; Bicabonate of soda) "
 <> "Sodium sesquicarbonate (Trona), "
 <> "Natriumcarbonat (Soda)" 
  , e_number: "E500"
  , group: AcidityRegulator 
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}