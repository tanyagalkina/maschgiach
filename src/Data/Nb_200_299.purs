module Data.Nb200to299 where

import Prelude

import CSS (em)
import Data.ENumberTypes (AdditiveGroup(..), ENumber, ENumberList, Kashrut(..), Source(..), emptyENumberList, insertEntry)

infixr 5 insertEntry as ++

preservatENumberList :: ENumberList
preservatENumberList = e200 ++ e201 ++ emptyENumberList
--  e100 ++ e101 ++ e102 ++ e104 ++ e110 ++ e120
--   ++ e121 ++ e123 ++ e124 ++ e129 ++ e131 ++ e140 ++ e141 ++ e150a
--   ++ emptyENumberList

-- seed data ---
e200 ∷ ENumber
e200 = {
  name: "Sorbic acid"
  , e_number: "E200"
  , group: Preservative
  , source: [Chametz, Kitniyot]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e201 ∷ ENumber
e201 = {
  name: "Sodium sorbate"
  , e_number: "E201"
  , group: Preservative
  , source: [Chametz, Kitniyot]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}