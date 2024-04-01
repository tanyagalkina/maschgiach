
-- Antioxidants and Acidity Regulators (300-399)

module Data.Nb300to399 (antioxidantENumberList) where

import Data.ENumberTypes (AdditiveGroup(..), ENumber, ENumberList, Kashrut(..), Source(..), emptyENumberList, insertEntry)

infixr 5 insertEntry as ++

antioxidantENumberList :: ENumberList
antioxidantENumberList =  e300 ++ e301 ++ emptyENumberList

e300 :: ENumber
e300 = {
  name: "Ascorbic acid"
  , e_number: "E300"
  , group: Antioxidant
  , source: []
  , description: "Vitamin C"
  , kosher: KosherNeedPassoverHashgoho
}

e301 :: ENumber
e301 =  {
  name: "Sodium L-ascorbate"
  , e_number: "E301"
  , group: Antioxidant
  , source: []
  , description: "Vitamin C"
  , kosher: KosherNeedPassoverHashgoho  
}


