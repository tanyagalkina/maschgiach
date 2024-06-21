-- Flavour Enhancers 600-699

module Data.Nb600to699 (flavourENumberList) where

import Prelude

import Data.ENumberTypes (AdditiveGroup(..), ENumber, ENumberList, Kashrut(..), Source(..), emptyENumberList, insertEntry)

-- import Data.Number (e)

infixr 5 insertEntry as ++

flavourENumberList :: ENumberList
flavourENumberList =  e620 ++ emptyENumberList

e620 :: ENumber
e620 = {
  name_english: "L-Glutamic acid"
  , name_russian: "L-Глутаминовая кислота"
  , name_german: "L-Glutaminsäure"
  , name_hebrew: "L-חומצה גלוטמית"
  , name_french: "Acide L-glutamique"
  , name_latvian: "L-Glutamīnskābe"
  , e_number: "E620"
  , group: FlavourEnchancer 
  , source: []
  , description: ""
  , kosher: NeedHashgohoWholeYearSomeAllow
}