
-- Thickeners, Stabilizers & Emulsifiers (400 - 499)

module Data.Nb400to499 (stabilizerENumberList) where


import Data.ENumberTypes (AdditiveGroup(..), ENumber, ENumberList, Kashrut(..), Source(..), emptyENumberList, insertEntry)

-- import Data.Number (e)

infixr 5 insertEntry as ++

stabilizerENumberList :: ENumberList
stabilizerENumberList =  e400 ++ e401 ++ emptyENumberList

e400 :: ENumber
e400 = {
  name_english: "Alginic acid" 
  , name_russian: "Альгиновая кислота"
  , name_german: "Alginsäure"
  , name_hebrew: "אלגינט"
  , name_french: "Acide alginique"
  , name_latvian: "algīnskābe"
  
  , e_number: "E400"
  , group: Stabilizer 
  , source: [Synthetic]
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e401 :: ENumber
e401 = {
  name_english: "Sodium alginate"
  , name_russian: "Альгинат натрия"
  , name_german: "Natriumalginat"
  , name_hebrew: "אלגינט נתרן"
  , name_french: "Alginate de sodium"
  , name_latvian: "nātrija algināts" 
  , e_number: "E401"
  , group: Stabilizer 
  , source: [Synthetic]
  , description: ""
  , kosher: NeedHashgohoWholeYear
}
