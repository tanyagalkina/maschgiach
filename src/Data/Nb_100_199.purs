-- Food Colours 100-199

module Data.Nb100to199 (colorENumberList) where

import Data.ENumberTypes (ENumber, ENumberList, AdditiveGroup(..), Kashrut(..), Source(..), insertEntry, emptyENumberList)


infixr 5 insertEntry as ++

colorENumberList :: ENumberList
colorENumberList = e100 ++ e101 ++ e102 ++ e104 ++ e110 ++ e120
  ++ e121 ++ e123 ++ e124 ++ e129 ++ e131 ++ e140 ++ e141 ++ e150a
  ++ emptyENumberList

-- seed data ---
e100 ∷ ENumber
e100 = {
  name_english: "Curcumin"
  , name_russian: "Куркумин"
  , name_german: "Curcumin"
  , name_hebrew: "קורקומין"
  , name_french: "Curcumine"
  , name_latvian: "Kurkumīns"
  , e_number: "E100"
  , group: Colour
  , source: [Vegan]
  , description: "Yellow colouring"
  , kosher: KosherIncludingPassover
}

e101 ∷ ENumber
e101 = {
  name_english: "Riboflavin"
  , name_russian: "Рибофлавин"
  , name_german: "Riboflavin"
  , name_hebrew: "ריבופלבין"
  , name_french: "Riboflavine"
  , name_latvian: "Riboflavīns"
  , e_number: "E101"
  , group: Colour
  , source: [Dairy, Animal, Chametz]
  , description: "Yellow colouring"
  , kosher: KosherNeedPassoverHashgoho
}

e102 ∷ ENumber
e102 = {
  name_english: "Tartrazine"
  , name_russian: "Тартразин"
  , name_german: "Tartrazin"
  , name_hebrew: "טרטרזין"
  , name_french: "Tartrazine"
  , name_latvian: "Tartrazīns"
  , e_number: "E102"
  , group: Colour
  , source: [] 
  , description: "Yellow colouring"
  , kosher: KosherIncludingPassover
}

e104 ∷ ENumber
e104 = {
  name_english: "Quinoline Yellow"
  , name_russian: "Кинолиновый желтый"
  , name_german: "Chinolingelb"
  , name_hebrew: "קוינולין צהוב"
  , name_french: "Jaune de quinoléine"
  , name_latvian: "Kinolīna dzeltenais"
  , e_number: "E104"
  , group: Colour
  , source: []
  , description: "Yellow colouring"
  , kosher: KosherIncludingPassover
}

e110 ∷ ENumber
e110 = {
  name_english: "Sunset Yellow FCF, Orange Yellow S"
  , name_russian: "Закат желтый FCF, Оранжевый желтый S"
  , name_german: "Sonnenuntergang Gelb FCF, Orange Gelb S"
  , name_hebrew: "צהריים צהוב FCF, כתום צהוב S"
  , name_french: "Coucher de soleil jaune FCF, Orange jaune S"
  , name_latvian: "Saules rieti dzeltenais FCF, Oranžais dzeltenais S"
  , e_number: "E110"
  , group: Colour
  , source: [Synthetic] 
  , description: "Orange colouring"
  , kosher: KosherIncludingPassover
}

e120 :: ENumber
e120 = {
  name_english: "Cochineal"
  , name_russian: "Кошениль"
  , name_german: "Cochenille (Echtes Karmin)"
  , name_hebrew: "כרמין"
  , name_french: "Cochenille"
  , name_latvian: "Kohīnēls"
  , e_number: "E120"
  , group: Colour
  , source: [Animal]
  , description: "Red colouring, Carmine of cochineal, Carminic Acid"
  , kosher: NotKosher
}

e121 :: ENumber
e121 = {
  name_english: "Citrus Red Nr.2"
  , name_russian: "Цитрусовый красный №2"
  , name_german: "Zitrusrot Nr.2"
  , name_hebrew: "אדום סיטרוס מספר 2"
  , name_french: "Rouge citron n ° 2"
  , name_latvian: "Citrona sarkans Nr.2"
  , e_number: "E121"
  , group: Colour
  , source: [Synthetic]
  , description: "Red colouring"
  , kosher: KosherForbidden 
}


e123 :: ENumber
e123 = {
  name_english: "Amaranth"
  , name_russian: "Амарант"
  , name_german: "Amaranth"
  , name_hebrew: "אמרנת"
  , name_french: "Amarante"
  , name_latvian: "Amarants"
  , e_number: "E123"
  , group: Colour
  , source: [Synthetic, Dangerous]
  , description: "Red colouring; C.I: 16185 FD and C Red 2"
  , kosher: KosherForbidden
}

e124 :: ENumber
e124 = {
  name_english: "Ponceau 4R, Cochineal Red A"
  , name_russian: "Понсо 4R, Кошениль красный A"
  , name_german: "Ponceau 4R, Cochenillerot A"
  , name_hebrew: "פונסו 4R, כרמין אדום A"
  , name_french: "Ponceau 4R, Rouge cochenille A"
  , name_latvian: "Ponso 4R, Kohīnēls sarkans A"
  , e_number: "E124"
  , group: Colour
  , source: [Synthetic, Dangerous]
  , description: "Red colouring; C.I: 16255"
  , kosher: KosherIncludingPassover
}

e129 :: ENumber
e129 = {
  name_english: "Allura Red AC"
  , name_russian: "Аллура красный AC"
  , name_german: "Allurarot AC"
  , name_hebrew: "אלורה אדום AC"
  , name_french: "Rouge Allura AC"
  , name_latvian: "Allura sarkans AC"
  , e_number: "E129"
  , group: Colour
  , source: [Synthetic, Dangerous]
  , description: "Red colouring; C.I: 16035 FD and C Red 40: יש חוששים, מקובל ככשר"
  , kosher: NeedHashgohoWholeYear
} 

e131 :: ENumber
e131 = {
  name_english: "Patent Blue V"
  , name_russian: "Патент синий V"
  , name_german: "Patentblau V"
  , name_hebrew: "פטנט כחול V"
  , name_french: "Bleu patenté V"
  , name_latvian: "Patenta zils V"
  , e_number: "E131"
  , group: Colour
  , source: [Synthetic, Dangerous]
  , description: "Blue colouring; C.I: 42051"
  , kosher: KosherIncludingPassover
}

e140 :: ENumber
e140 = {
  name_english: "Chlorophyll"
  , name_russian: "Хлорофилл"
  , name_german: "Chlorophylle und Chlorophylline"
  , name_hebrew: "כלורופיל"
  , name_french: "Chlorophylle"
  , name_latvian: "Hlorofils"
  , e_number: "E140"
  , group: Colour
  , source: [Wine]
  , description: "Green colouring; C.I: 75810"
  , kosher: NeedHashgohoWholeYear
}

e141 :: ENumber
e141 = {
  name_english: "Copper complexes of chlorophyll and chlorophyllins"
  , name_russian: "Медные комплексы хлорофилла и хлорофиллинов"
  , name_german: "Kupferkomplexe von Chlorophyll und Chlorophyllinen"
  , name_hebrew: "מורכבי נחושת של כלורופיל וכלורופילינים"
  , name_french: "Complexes de cuivre de chlorophylle et de chlorophyllines"
  , name_latvian: "Varšu kompleksi ar hlorofillu un hlorofilīniem"
  , e_number: "E141"
  , group: Colour
  , source: [Wine]
  , description: "Green colouring; C.I: 75810"
  , kosher: NeedHashgohoWholeYear
  
}

e150a :: ENumber
e150a =  {
  name_english: "Plain Caramel"
  , name_russian: "Простой карамель"
  , name_german: "Einfaches Zuckerkulör"
  , name_hebrew: "קרמל פשוט"
  , name_french: "Caramel simple"
  , name_latvian: "Vienkāršs karamēlis"
  , e_number: "E150a"
  , group: Colour
  , source: []
  , description: "Brown colouring"
  , kosher: KosherNeedPassoverHashgoho
}