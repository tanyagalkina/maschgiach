-- Preservatives (200-299)

module Data.Nb200to299
  ( (++)
  , e201
  , preservatENumberList
  )
  where


import Data.ENumberTypes (AdditiveGroup(..), ENumber, ENumberList, Kashrut(..), Source(..), emptyENumberList, insertEntry)

infixr 5 insertEntry as ++

preservatENumberList :: ENumberList
preservatENumberList = e200 ++ e201 ++ emptyENumberList

-- seed data ---
e200 ∷ ENumber
e200 = {
  name_english: "Sorbic acid"
  , name_russian: "Сорбиновая кислота"
  , name_german: "Sorbinsäure"
  , name_hebrew: "חומצה סורבית"
  , name_french: "Acide sorbique"
  , name_latvian: "Sorbīnskābe"
  , e_number: "E200"
  , group: Preservative
  , source: [Chametz, Kitniyot]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e201 ∷ ENumber
e201 = {
  name_english: "Sodium sorbate"
  , name_russian: "Сорбат натрия"
  , name_german: "Natriumsorbat"
  , name_hebrew: "סורבט נתרן"
  , name_french: "Sorbate de sodium"
  , name_latvian: "Nātrija sorbāts"
  , e_number: "E201"
  , group: Preservative
  , source: [Chametz, Kitniyot]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}