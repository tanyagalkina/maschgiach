
-- Antioxidants and Acidity Regulators (300-399)

module Data.Nb300to399 (antioxidantENumberList) where

import Data.ENumberTypes (AdditiveGroup(..), ENumber, ENumberList, Kashrut(..), Source(..), emptyENumberList, insertEntry)

infixr 5 insertEntry as ++

antioxidantENumberList :: ENumberList
antioxidantENumberList =  e300 ++ e301 ++ emptyENumberList

e300 :: ENumber
e300 = {
  name_english: "Ascorbic acid"
  , name_russian: "Аскорбиновая кислота"
  , name_german: "Ascorbinsäure"
  , name_hebrew: "חומצה אסקורבית"
  , name_french: "Acide ascorbique"
  , name_latvian: "Askorbīnskābe"
  , e_number: "E300"
  , group: Antioxidant
  , source: []
  , description: "Vitamin C"
  , kosher: KosherNeedPassoverHashgoho
}

e301 :: ENumber
e301 =  {
  name_english: "Sodium ascorbate"
  , name_russian: "Натрия аскорбат"
  , name_german: "Natriumascorbat"
  , name_hebrew: "אסקורבט נתרן"
  , name_french: "Ascorbate de sodium"
  , name_latvian: "Nātrija askorbāts"
  , e_number: "E301"
  , group: Antioxidant
  , source: []
  , description: "Vitamin C"
  , kosher: KosherNeedPassoverHashgoho  
}


