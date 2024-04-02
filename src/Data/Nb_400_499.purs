
-- Thickeners, Stabilizers & Emulsifiers (400 - 499)

module Data.Nb400to499 (stabilizerENumberList) where


import Data.ENumberTypes (AdditiveGroup(..), ENumber, ENumberList, Kashrut(..), Source(..), emptyENumberList, insertEntry)
-- import Data.Number (e)

infixr 5 insertEntry as ++

stabilizerENumberList :: ENumberList
stabilizerENumberList =  e400 ++ e401 ++ emptyENumberList

e400 :: ENumber
e400 = {
  name: "Alginic acid" 
  , e_number: "E400"
  , group: Stabilizer 
  , source: [Synthetic]
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e401 :: ENumber
e401 = {
  name: "Sodium alginate" 
  , e_number: "E401"
  , group: Stabilizer 
  , source: [Synthetic]
  , description: ""
  , kosher: NeedHashgohoWholeYear
}
