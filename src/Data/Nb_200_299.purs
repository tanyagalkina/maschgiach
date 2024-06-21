-- Preservatives (200-299)

module Data.Nb200to299
  ( (++)
  , e201
  , preservatENumberList
  )
  where


import Affjax.RequestHeader (name)
import Data.ENumberTypes (AdditiveGroup(..), ENumberList, Kashrut(..), Source(..), ENumber, emptyENumberList, insertEntry)
import Data.Number (e)

infixr 5 insertEntry as ++

preservatENumberList :: ENumberList
preservatENumberList = e200 ++ e201 ++ e202 ++ e203 ++ e209 ++ e210 ++ e211 ++ e212 ++ e213 ++ e214 ++ e215 ++ e216 ++ e217 ++ e218 ++
  emptyENumberList

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

e202 :: ENumber
e202 = {
  name_english: "Potassium sorbate"
  , name_russian: "Сорбат калия"
  , name_german: "Kaliumsorbat"
  , name_hebrew: "סורבט קליום"
  , name_french: "Sorbate de potassium"
  , name_latvian: "Kālija sorbāts"
  , e_number: "E202"
  , group: Preservative
  , source: [Chametz, Kitniyot]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e203 ::ENumber
e203 = {
  name_english: "Calcium sorbate"
  , name_russian: "Сорбат кальция"
  , name_german: "Calciumsorbat"
  , name_hebrew: "סורבט סידן"
  , name_french: "Sorbate de calcium"
  , name_latvian: "Kalcija sorbāts"
  , e_number: "E203"
  , group: Preservative
  , source: [Chametz, Kitniyot]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho  
}

e209 :: ENumber
e209 = {
  name_english: "Heptyl p-hydroxybezoate, Heptylparaben"
  , name_russian: "Гептилпарабен"
  , name_german: "Heptylparaben"
  , name_hebrew: "הפטיל פרבן"
  , name_french: "Heptylparaben"
  , name_latvian: "Heptilparabens"
  , e_number: "E209"
  , group: Preservative
  , source: []
  , description: ""
  , kosher: KosherNeedPassoverHashgoho  
}

e210 :: ENumber
e210 = {
  name_english: "Benzoic acid"
  , name_russian: "Бензойная кислота"
  , name_german: "Benzosäure"
  , name_hebrew: "חומצה בנזואית"
  , name_french: "Acide benzoïque"
  , name_latvian: "Benzojkskābe"
  , e_number: "E210"
  , group: Preservative
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover 
}

e211 :: ENumber
e211 = {
  name_english: "Sodium bentoate"
  , name_russian: "Бензойнокислый натрий, Бензоат натрия"
  , name_german: "Natriumbenzoat"
  , name_hebrew: "בנזואט נתרן"
  , name_french: "Benzoate de sodium"
  , name_latvian: "Nātrija benzoāts"
  , e_number: "E211"
  , group: Preservative
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e212 :: ENumber
e212 = {
  name_english: "Potassium benzoate"
  , name_russian: "Бензойнокислый калий, Бензоат калия"
  , name_german: "Kaliumbenzoat"
  , name_hebrew: "בנזואט קליום"
  , name_french: "Benzoate de potassium"
  , name_latvian: "Kālija benzoāts"
  , e_number: "E212"
  , group: Preservative
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e213 :: ENumber
e213 = {
  name_english: "Calcium benzoate"
  , name_russian: "Бензойнокислый кальций, Бензоат кальция"
  , name_german: "Calciumbenzoat"
  , name_hebrew: "בנזואט סידן"
  , name_french: "Benzoate de calcium"
  , name_latvian: "Kalcija benzoāts"
  , e_number: "E213"
  , group: Preservative
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e214 :: ENumber
e214 = {
  name_english: "Ethyl p-hydroxybenzoate"
  , name_russian: "Этиловый эфир парагидро-кси-бензойной кислоты"
  , name_german: "Ethyl-p-hydroxybenzoat"
  , name_hebrew: "אתיל פרבן"
  , name_french: "Ethyl p-hydroxybenzoate"
  , name_latvian: "Etilp-hidroksibenzoāts"
  , e_number: "E214"
  , group: Preservative
  , source: []
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e215 :: ENumber
e215 = {
  name_english: "Sodium ethyl p-hydroxybenzoate"
  , name_russian: "Натриевая соль этилового эфира пара-гидрокси-бензойной кислоты"
  , name_german: "pHB-Ester-Natrium-Ethyl-Verbindung"
  , name_hebrew: "אתיל פרבן נתרן"
  , name_french: "Ethyl p-hydroxybenzoate de sodium"
  , name_latvian: "Nātrija etilp-hidroksibenzoāts"
  , e_number: "E215"
  , group: Preservative
  , source: []
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e216 :: ENumber
e216 = {
  name_english: "Propyl para-hydroxybenzoate"
  , name_russian: "Пропиловый эфир, пара-гидрокси-бензойной кислоты"
  , name_german: "Propyl-p-hydroxybenzoat"
  , name_hebrew: "פרופיל פרבן"
  , name_french: "Propyl p-hydroxybenzoate"
  , name_latvian: "Propilp-hidroksibenzoāts"
  , e_number: "E216"
  , group: Preservative
  , source: []
  , description: ""
  , kosher: UsuallyKosherRarelyNeedsHashgoho
}

e217 :: ENumber
e217 = {
  name_english: "Sodium propyl para-hydroxybenzoate"
  , name_russian: "Натриевая соль пропилового эфира пара-гидрокси-бензойной кислоты"
  , name_german: "Propyl-p-hydroxybenzoat-Natrium-Verbindung"
  , name_hebrew: "פרופיל פרבן נתרן"
  , name_french: "Propyl p-hydroxybenzoate de sodium"
  , name_latvian: "Nātrija propilp-hidroksibenzoāts"
  , e_number: "E217"
  , group: Preservative
  , source: []
  , description: ""
  , kosher: UsuallyKosherRarelyNeedsHashgoho
}

e218 :: ENumber
e218 = {
  name_english: "Methyl para-hydroxybenzoate"
  , name_russian: "Метиловый эфир, пара-гидрокси-бензойной кислоты"
  , name_german: "Methyl-p-hydroxybenzoat"
  , name_hebrew: "מתיל פרבן"
  , name_french: "Methyl p-hydroxybenzoate"
  , name_latvian: "Metilp-hidroksibenzoāts"
  , e_number: "E218"
  , group: Preservative
  , source: []
  , description: ""
  , kosher: UsuallyKosherRarelyNeedsHashgoho
}

