
-- Additional chemicals
module Data.Nb1000to1199 (additionalChemicalsList) where

import Prelude

import Data.ENumberTypes (AdditiveGroup(..), ENumberList, Kashrut(..), Source(..), ENumber, emptyENumberList, insertEntry)

infixr 5 insertEntry as ++

additionalChemicalsList :: ENumberList
additionalChemicalsList = e1000 ++ e1001 ++
  emptyENumberList

e1000 :: ENumber
e1000 = {
  name_english: "Cholic acid"
  , name_russian: "Холевая кислота"
  , name_german: "Cholsäure"
  , name_hebrew: "חומצה כולית"
  , name_french: "Acide cholique"
  , name_latvian: "Holīnskābe"
  , e_number: "E1000"
  , group: Emulsifier
  , source: []
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e1001 :: ENumber
e1001 = {
  name_english: "Choline salts"
  , name_russian: "Соли холина"
  , name_german: "Cholin-Salze"
  , name_hebrew: "מלחי כולין"
  , name_french: "Sels de choline"
  , name_latvian: "Holīna sāļi"
  , e_number: "E1001"
  , group: Emulsifier
  , source: []
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}