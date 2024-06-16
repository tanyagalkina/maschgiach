-- Food Colours 100-199

module Data.Nb100to199 (colorENumberList) where

import Affjax.RequestHeader (name)
import CSS as C
import CSS as C.I
import Data.ENumberTypes (AdditiveGroup(..), ENumberList, Kashrut(..), Source(..), ENumber, emptyENumberList, insertEntry)
import Data.Number (e)


infixr 5 insertEntry as ++

colorENumberList :: ENumberList
colorENumberList = e100 ++ e101 ++ e101a ++ e102 ++ e103 ++ e104 ++ e105 ++ e106 ++ e107 ++
 e110 ++ e111 ++
 e120 ++ e121 ++ e122 ++ e123 ++ e124 ++ e125 ++ e126 ++ e127 ++ e128 ++ e129 ++
 e130 ++ e131 ++ e132 ++ e133 ++
 e140 ++ e141 ++ e142 ++ e143 ++
 e150a ++ e150b_150d
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

e101a :: ENumber
e101a = {
  name_english: "Riboflavin-5 Phosphate"
  , name_russian: "Рибофлавин-5 фосфат"
  , name_german: "Riboflavin-5Phosphat"
  , name_hebrew: "ריבופלבין-5 פוספט"
  , name_french: "Riboflavine-5 phosphate"
  , name_latvian: "Riboflavīns-5 fosfāts"
  , e_number: "E101a"
  , group: Colour
  , source: [Dairy, Animal, Chametz]
  , description: "Yellow and Orange colouring"
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

e103 :: ENumber
e103 = {
  name_english: "Chrysoine resorcinol"
  , name_russian: "Chrysoine resorcinol"
  , name_german: "Chrysoine resorcinol"
  , name_hebrew: "Chrysoine resorcinol"
  , name_french: "Chrysoine resorcinol"
  , name_latvian: "Chrysoine resorcinol"
  , e_number: "E103"
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

e105 :: ENumber
e105 = {
  name_english: "Fast Yellow"
  , name_russian: "Fast Yellow"
  , name_german: "Fast Yellow"
  , name_hebrew: "Fast Yellow"
  , name_french: "Fast Yellow"
  , name_latvian: "Fast Yellow"
  , e_number: "E105"
  , group: Colour
  , source: []
  , description: "Yellow colouring"
  , kosher: KosherIncludingPassover
}

e106 :: ENumber
e106 = {
  name_english: "Riboflavin 5 sodium phosphate"
  , name_russian: "Riboflavin 5 sodium phosphate"
  , name_german: "Riboflavin 5 sodium phosphate"
  , name_hebrew: "Riboflavin 5 sodium phosphate"
  , name_french: "Riboflavin 5 sodium phosphate"
  , name_latvian: "Riboflavin 5 sodium phosphate"
  , e_number: "E106"
  , group: Colour
  , source: []
  , description: "Yellow colouring"
  , kosher: KosherNeedPassoverHashgoho
}

e107 :: ENumber
e107 = {
  name_english: "Yellow 2G"
  , name_russian: "Желтый 2G"
  , name_german: "Gelb 2G"
  , name_hebrew: "2G צהוב "
  , name_french: "Jaune 2G"
  , name_latvian: "Dzeltenais 2G"
  , e_number: "E107"
  , group: Colour
  , source: [Synthetic]
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

e111 :: ENumber
e111 = {
  name_english: "Orange GGN"
  , name_russian: "Оранжевый GGN"
  , name_german: "Orange GGN"
  , name_hebrew: "כתום GGN"
  , name_french: "Orange GGN"
  , name_latvian: "Oranžais GGN"
  , e_number: "E111"
  , group: Colour
  , source: [Synthetic]
  , description: "Orange colouring"
  , kosher: KosherIncludingPassover
}

e120 :: ENumber
e120 = {
  name_english: "Cochineal"
  , name_russian: "Экстракт кошинели, Карминовая кислота, Кармин"
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

e122 :: ENumber
e122 = {
  name_english: "Azorubine, Carmoisine"
  , name_russian: "Азорубин, Кармуазин"
  , name_german: "Azorubin, Carmoisin"
  , name_hebrew: "אזורובין, כרמואיזין"
  , name_french: "Azorubine, Carmoisine"
  , name_latvian: "Azorubīns, Karmozīns"
  , e_number: "E122"
  , group: Colour
  , source: [Synthetic, Dangerous]
  , description: "Red colouring; C.I: 14720, Dangerous"
  , kosher: KosherIncludingPassover
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
  , description: "Red colouring; C.I: 16255, Dangerous"
  , kosher: KosherIncludingPassover
}

e125 :: ENumber
e125 = {
  name_english: "Ponceau SX, Scarlet GN"
  , name_russian: "Понсо SX, Скарлет GN"
  , name_german: "Ponceau SX, Scarlet GN"
  , name_hebrew: "פונסו SX, סקרלט GN"
  , name_french: "Ponceau SX, Scarlet GN"
  , name_latvian: "Ponso SX, Skarlets GN"
  , e_number: "E125"
  , group: Colour
  , source: [Synthetic]
  , description: "Red colouring; C.I: 14700"
  , kosher: KosherIncludingPassover
}

e126 :: ENumber
e126 = {
  name_english: "Ponceau 6R"
  , name_russian: "Понсо 6R"
  , name_german: "Ponceau 6R"
  , name_hebrew: "פונסו 6R"
  , name_french: "Ponceau 6R"
  , name_latvian: "Ponso 6R"
  , e_number: "E126"
  , group: Colour
  , source: [Synthetic]
  , description: "Red colouring; C.I: 16255"
  , kosher: KosherIncludingPassover
}

e127 :: ENumber
e127 = {
  name_english: "Erythrosine"
  , name_russian: "Эритрозин"
  , name_german: "Erythrosin"
  , name_hebrew: "אריתרוזין"
  , name_french: "Érythrosine"
  , name_latvian: "Erītrozīns"
  , e_number: "E127"
  , group: Colour
  , source: [Synthetic]
  , description: "Red colouring; C.I: 45430 FD and C Red 3"
  , kosher: KosherIncludingPassover
}

e128 :: ENumber
e128 = {
  name_english: "Red 2G"
  , name_russian: "Красный 2G"
  , name_german: "Rot 2G"
  , name_hebrew: "2G אדום"
  , name_french: "Rouge 2G"
  , name_latvian: "Sarkans 2G"
  , e_number: "E128"
  , group: Colour
  , source: [Synthetic]
  , description: "Red colouring; C.I. 18050"
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

e130 :: ENumber
e130 = {
  name_english: "Indanthrene Blue RS"
  , name_russian: "Индантрен синий RS"
  , name_german: "Indanthrenblau RS"
  , name_hebrew: "אינדנתרן כחול RS"
  , name_french: "Indanthrène bleu RS"
  , name_latvian: "Indantrens zils RS"
  , e_number: "E130"
  , group: Colour
  , source: [Synthetic]
  , description: "Blue colouring; C.I: 73015"
  , kosher: KosherIncludingPassover
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
  , description: "Blue colouring; C.I: 42051, Dangerous"
  , kosher: KosherIncludingPassover
}

e132 :: ENumber
e132 = {
  name_english: "Indigo Carmine, Indigotine"
  , name_russian: "Индиго кармин, Индиготин"
  , name_german: "Indigotin"
  , name_hebrew: "אינדיגו כרמין, אינדיגוטין"
  , name_french: "Indigotine"
  , name_latvian: "Indigo karmins, Indigotīns"
  , e_number: "E132"
  , group: Colour
  , source: [Synthetic, Dangerous]
  , description: "Blue colouring; C.I: 73015, Dangerous"
  , kosher: KosherIncludingPassover
}

e133 :: ENumber
e133 = {
  name_english: "Brilliant Blue FCF, Blue 2"
  , name_russian: "Бриллиантовый синий FCF, Синий 2"
  , name_german: "Brillantblau FCF, Blau 2"
  , name_hebrew: "כחול בריליאנט FCF, כחול 2"
  , name_french: "Bleu brillant FCF, Bleu 2"
  , name_latvian: "Brilliant Blue FCF, Blue 2"
  , e_number: "E133"
  , group: Colour
  , source: [Synthetic, Dangerous]
  , description: "Blue colouring; C.I: 42090, Dangerous"
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

e142 :: ENumber
e142 = {
  name_english: "Food green S, Acid brillant green"
  , name_russian: "Пищевой Зеленый S, Блестящий зеленый S"
  , name_german: "Brillantsäure"
  , name_hebrew: "ירוק S"
  , name_french: "Vert S"
  , name_latvian: "Zaļais S"
  , e_number: "E142"
  , group: Colour
  , source: [Synthetic]
  , description: "Green colouring, C.I. 44090, Dangerous"
  , kosher: KosherIncludingPassover
}

e143 :: ENumber
e143 = {
  name_english: "Fast Green FCF (FD and Green 31)"
  , name_russian: "Fast Green FCF (FD and Green 31)"
  , name_german: "Fast Green FCF (FD and Green 31)"
  , name_hebrew: "Fast Green FCF (FD and Green 31)"
  , name_french: "Fast Green FCF (FD and Green 31)"
  , name_latvian: "Fast Green FCF (FD and Green 31)"
  , e_number: "E143"
  , group: Colour
  , source: [Synthetic]
  , description: "Green colouring, C.I. 42053"
  , kosher: KosherIncludingPassover
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

e150b_150d :: ENumber
e150b_150d = {
  name_english: "Caustic sulphite caramel, Ammonia caramel, Sulphite ammonia caramel"
  , name_russian: "Сахарный колер II, Сахарный колер III, Сахарный колер IV"
  , name_german: "Ammoniak- und Sulfitkulör"
  , name_hebrew: "קרמל סולפיט קוסטי"
  , name_french: "Caramel"
  , name_latvian: "Karamēlis"
  , e_number: "E150b-150d"
  , group: Colour
  , source: []
  , description: "Brown colouring"
  , kosher: KosherNeedPassoverHashgoho
}
