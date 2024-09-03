-- Food Colours 100-199

module Data.Nb100to199 (colorENumberList) where

import Data.ENumberTypes (AdditiveGroup(..), ENumber, ENumberList, Kashrut(..), Source(..), emptyENumberList, insertEntry)

infixr 5 insertEntry as ++

colorENumberList :: ENumberList
colorENumberList = e100 ++ e101 ++ e101a ++ e102 ++ e103 ++ e104 ++ e105 ++ e106 ++ e107 ++
 e110 ++ e111 ++
 e120 ++ e121 ++ e122 ++ e123 ++ e124 ++ e125 ++ e126 ++ e127 ++ e128 ++ e129 ++
 e130 ++ e131 ++ e132 ++ e133 ++
 e140 ++ e141 ++ e142 ++ e143 ++
 e150a ++ e150b ++ e150c ++ e150d ++ e151 ++ e152 ++ e153 ++ e154 ++ e155 ++
 e160a ++ e160b ++ e160c ++ e160d ++ e160e ++ e160f ++
 e161a ++ e161b ++ e161c ++ e161d ++ e161e ++ e161f ++ e161g ++ e161h ++ e161i ++ e161j ++ e162 ++ e163 ++
 e170 ++ e171 ++ e172 ++ e173 ++ e174 ++ e175 ++ e180 ++ e181 ++ e182
  ++ emptyENumberList

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
  name_english: "Riboflavin (Vitamin B2), Lactoflavin (Vitamin G)"
  , name_russian: "Рибофлавин"
  , name_german: "Riboflavin"
  , name_hebrew: "ריבופלבין"
  , name_french: "Riboflavine"
  , name_latvian: "Riboflavīns, Vitamīns B2, Riboflavīna-5 fosfāts"
  , e_number: "E101"
  , group: Colour
  , source: [Dairy, Animal, Chametz]
  , description: "Yellow colouring"
  , kosher: UsuallyKosherRarelyNeedsHashgoho
}

e101a :: ENumber
e101a = {
  name_english: "Riboflavin-5 Phosphate"
  , name_russian: "Рибофлавин-5 фосфат"
  , name_german: "Riboflavin-5Phosphat"
  , name_hebrew: "ריבופלבין-5 פוספט"
  , name_french: "Riboflavine-5 phosphate"
  , name_latvian: "Riboflavīna-5 fosfāts"
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
  , name_russian: "Хризоин резорцинол"
  , name_german: "Chrysoin-Resorcin"
  , name_hebrew: "כריזואין רזוצינול"
  , name_french: "Chrysoine résorcinol"
  , name_latvian: "Kriozīna resorcinols"
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
  , name_latvian: "Hinolīna dzeltenais"
  , e_number: "E104"
  , group: Colour
  , source: []
  , description: "Yellow colouring"
  , kosher: KosherIncludingPassover
}

e105 :: ENumber
e105 = {
  name_english: "Fast Yellow AB"
  , name_russian: "Быстрый жёлтый AB"
  , name_german: "Schnellgelb AB"
  , name_hebrew: "צהוב מהיר AB"
  , name_french: "Jaune rapide AB"
  , name_latvian: "Ātrais dzeltens AB"
  , e_number: "E105"
  , group: Colour
  , source: []
  , description: "Yellow colouring"
  , kosher: KosherIncludingPassover
}

e106 :: ENumber
e106 = {
  name_english: "Riboflavin-5-Sodium Phosphate"
  , name_russian: "Рибофлавин-5-фосфат натрия"
  , name_german: "Riboflavin-5-Natriumphosphat"
  , name_hebrew: "ריבופלאבין-5-פוספט נתרן"
  , name_french: "Riboflavine-5-phosphate de sodium"
  , name_latvian: "Riboflavīna-5-nātrija fosfāts, Flavīna mononukleotīds"
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
  , name_latvian: "Saulrieta dzeltenais FCF, oranždzeltenais S"
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
  , name_latvian: "Košenils, Karmīnskābe, Karmīns"
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
  , name_latvian: "Azorubīns, Karmoizīns"
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
  , name_latvian: "Košenila sarkanais, Kumačs 4R"
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
  , name_latvian: "Magoņkrāsas SX"
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
  , name_latvian: "Magoņkrāsas 6R"
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
  , name_latvian: "Sarkanais 2G"
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
  , name_latvian: "Alūra sarkanais AC"
  , e_number: "E129"
  , group: Colour
  , source: [Synthetic, Dangerous]
  , description: "Red colouring; C.I: 16035 FD and C Red 40: יש חוששים, מקובל ככשר"
  , kosher: NeedHashgohoWholeYearSomeAllow
}

e130 :: ENumber
e130 = {
  name_english: "Indanthrene Blue RS"
  , name_russian: "Индантрен синий RS"
  , name_german: "Indanthrenblau RS"
  , name_hebrew: "אינדנתרן כחול RS"
  , name_french: "Indanthrène bleu RS"
  , name_latvian: "Indantrens zilais RS"
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
  , name_latvian: "Patentzilais V"
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
  , name_latvian: "Indigotīns, indigokarmīns"
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
  , name_latvian: "Briljantzilais FCF"
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
  , name_latvian: "Hlorofili un hlorofilīni"
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
  , name_latvian: "Hlorofilu un hlorofilīnu vara kompleksi"
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
  , name_russian: "Быстрый зеленый FCF (FD и Зеленый 31)"
  , name_german: "Schnellgrün FCF (FD und Grün 31)"
  , name_hebrew: "ירוק מהיר FCF (FD וירוק 31)"
  , name_french: "Vert rapide FCF (FD et Vert 31)"
  , name_latvian: "Izturīgi zaļais FCF"
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
  , name_latvian: "Karamele"
  , e_number: "E150a"
  , group: Colour
  , source: [Dairy, Animal]
  , description: "Brown colouring"
  , kosher: KosherNeedPassoverHashgoho
}

e150b :: ENumber
e150b = {
  name_english: "Caustic sulphite caramel"
  , name_russian: "Сахарный колер II"
  , name_german: "Ammoniak- und Sulfitkulör"
  , name_hebrew: "קרמל סולפיט קוסטי"
  , name_french: "Caramel"
  , name_latvian: "Sulfīta karamele"
  , e_number: "E150b"
  , group: Colour
  , source: [Dairy, Animal]
  , description: "Brown colouring"
  , kosher: KosherNeedPassoverHashgoho
}
e150c :: ENumber
e150c = {
  name_english: "Ammonia caramel"
  , name_russian: "Сахарный колер III"
  , name_german: "Ammoniak- und Sulfitkulör"
  , name_hebrew: "קרמל סולפיט קוסטי"
  , name_french: "Caramel"
  , name_latvian: "Amonija Karamele"
  , e_number: "E150c"
  , group: Colour
  , source: [Dairy, Animal]
  , description: "Brown colouring"
  , kosher: KosherNeedPassoverHashgoho
}
e150d :: ENumber
e150d = {
  name_english: "Sulphite ammonia caramel"
  , name_russian: "Сахарный колер IV"
  , name_german: "Ammoniak- und Sulfitkulör"
  , name_hebrew: "קרמל סולפיט קוסטי"
  , name_french: "Caramel"
  , name_latvian: "Amonija sulfīta karamele"
  , e_number: "E150d"
  , group: Colour
  , source: [Dairy, Animal]
  , description: "Brown colouring"
  , kosher: KosherNeedPassoverHashgoho
}

e151 :: ENumber
e151 = {
  name_english: "Brilliant Black BN, Black PN"
  , name_russian: "Блестящий черный BN, Черный PN"
  , name_german: "Brillantschwarz BN, Schwarz PN"
  , name_hebrew: "שחור בריליאנט BN, שחור PN"
  , name_french: "Noir brillant BN, Noir PN"
  , name_latvian: "Briljanta melnais BN, melnais PN"
  , e_number: "E151"
  , group: Colour
  , source: [Synthetic]
  , description: "Black colouring; C.I: 28440"
  , kosher: KosherIncludingPassover
}

e152 :: ENumber
e152 = {
  name_english: "Black 7984"
  , name_russian: "Уголь"
  , name_german: "Schwarz 7984"
  , name_hebrew: "שחור 7984"
  , name_french: "Noir 7984"
  , name_latvian: "Black 7984"
  , e_number: "E152"
  , group: Colour
  , source: []
  , description: "Black colouring. Not allowed in EU"
  , kosher: KosherIncludingPassover
}

e153 :: ENumber
e153 = {
  name_english: "Carbon black (Vegetable carbon)"
  , name_russian: "Растительный уголь"
  , name_german: "Kohlen-Schwarz"
  , name_hebrew: "פחם צמחי"
  , name_french: "Charbon végétal"
  , name_latvian: "Augogle"
  , e_number: "E153"
  , group: Colour
  , source: [Animal]
  , description: "Black colouring"
  , kosher: NeedHashgohoWholeYear
}

e154 :: ENumber
e154 = {
  name_english: "Brown FK (Kipper brown; Food brown)"
  , name_russian: "Коричневый FK"
  , name_german: "Braun FK"
  , name_hebrew: "חום FK"
  , name_french: "Brun FK"
  , name_latvian: "Brūnais FK"
  , e_number: "E154"
  , group: Colour
  , source: [Synthetic]
  , description: "Brown colouring"
  , kosher: KosherIncludingPassover
}

e155 :: ENumber
e155 = {
  name_english: "Brown HT (Chocolate Brown HT)"
  , name_russian: "Коричневый HT"
  , name_german: "Braun HT"
  , name_hebrew: "חום HT"
  , name_french: "Brun HT"
  , name_latvian: "Brūnais HT"
  , e_number: "E155"
  , group: Colour
  , source: [Synthetic, Dangerous]
  , description: "Brown colouring; C.I. 20285, Dangerous"
  , kosher: KosherIncludingPassover
}

e160a :: ENumber
e160a = {
  name_english: "Alpha, Beta and Gamma carotene"
  , name_russian: "Каротины, Бета-Каротин(синтетический), Экстракты натуральных каротинов"
  , name_german: "Carotinmischung oder Beta carotin"
  , name_hebrew: "קרוטינים"
  , name_french: "Carotènes melanges beta carotènes"
  , name_latvian: "Karotīni - Jauktie karotīni, Beta karotīns"
  , e_number: "E160a"
  , group: Colour
  , source: [Animal]
  , description: "Yellow/Orange colouring; C.I. 75130"
  , kosher: NeedHashgohoWholeYear
}

e160b :: ENumber
e160b = {
  name_english: "Annatto, Bixin, Norbixin (Orlean, Rocou)"
  , name_russian: "Аннато экстракты, Биксин, Норбиксин"
  , name_german: "Annatto, Bixin, Norbixin"
  , name_hebrew: "אנטו, ביקסין, נורביקסין"
  , name_french: "Annatto, Bixin, Norbixin"
  , name_latvian: "Annato, Biksīns, Norbiksīns"
  , e_number: "E160b"
  , group: Colour
  , source: [Vegan]
  , description: "Yellow/Red colouring; C.I. 75120"
  , kosher: KosherNeedPassoverHashgoho
}

e160c :: ENumber
e160c = {
  name_english: "Paprika extract, Capsanthin, Capsorubin"
  , name_russian: "Маслосмолы паприки"
  , name_german: "Paprikaextrakt, Oleoresin, Paprika oleoresine"
  , name_hebrew: "תמצית פפריקה, קפסנטין, קפסורובין"
  , name_french: "Extrait de paprika, Capsanthine, Capsorubine"
  , name_latvian: "Paprikas ekstrakts, Kapsantīns, Kapsorubīns"
  , e_number: "E160c"
  , group: Colour
  , source: [Vegan]
  , description: "Red colouring"
  , kosher: KosherIncludingPassover
}

e160d :: ENumber
e160d = {
  name_english: "Lycopene"
  , name_russian: "Ликопин"
  , name_german: "Lycopin"
  , name_hebrew: "ליקופן"
  , name_french: "Lycopène"
  , name_latvian: "Likopēns"
  , e_number: "E160d"
  , group: Colour
  , source: [Vegan]
  , description: "Red colouring"
  , kosher: KosherIncludingPassover
}

e160e :: ENumber
e160e = {
  name_english: "Beta-apo-8'-carotenal (C30)"
  , name_russian: "Бета-апо-8'-каротиновый альдегид"
  , name_german: "Beta-apo-8'-carotenal (C30)"
  , name_hebrew: "בטא-אפו-8'-קרוטנל (C30)"
  , name_french: "Bêta-apo-8'-caroténal (C30)"
  , name_latvian: "Beta-apo-8`karotināls (C30)"
  , e_number: "E160e"
  , group: Colour
  , source: [Synthetic]
  , description: "Yellow/Red/Orange colouring"
  , kosher: KosherIncludingPassover
}

e160f :: ENumber
e160f = {
  name_english: "Ethyl ester of Beta-apo-8'-carotenic acid (C30)"
  , name_russian: "Метиловый и этиловый эфиры бета-апо-8'-каротиновой кислоты (C30)"
  , name_german: "Ethylester von Beta-apo-8'-carotinsäure (C30)"
  , name_hebrew: "אתיל אסטר של חומצת בטא-אפו-8'-קרוטינית (C30)"
  , name_french: "Ester éthylique de l'acide bêta-apo-8'-caroténique (C30)"
  , name_latvian: "Beta-8`-karotīnskābes etilesteris (C30)"
  , e_number: "E160f"
  , group: Colour
  , source: [Synthetic]
  , description: "Yellow/Orange colouring"
  , kosher: KosherIncludingPassover
}

e161a :: ENumber
e161a = {
  name_english: "Xanthophylls flavoxanthin"
  , name_russian: "Флавоксантин"
  , name_german: "Flavoxanthin"
  , name_hebrew: "פלבוקסנטין"
  , name_french: "Flavoxanthine"
  , name_latvian: "Flavoksantīns"
  , e_number: "E161"
  , group: Colour
  , source: [Synthetic]
  , description: "Yellow/Orange colouring"
  , kosher: NeedHashgohoWholeYearSomeAllow
}

e161b :: ENumber
e161b = {
  name_english: "Lutein"
  , name_russian: "Лютеин"
  , name_german: "Lutein"
  , name_hebrew: "לוטאין"
  , name_french: "Lutéine"
  , name_latvian: "Luteīns"
  , e_number: "E161b"
  , group: Colour
  , source: []
  , description: "Yellow colouring"
  , kosher: NeedHashgohoWholeYear
}

e161c :: ENumber
e161c = {
  name_english: "Cryptoxanthin"
  , name_russian: "Криптоксантин"
  , name_german: "Cryptoxanthin"
  , name_hebrew: "קריפטוקסנטין"
  , name_french: "Cryptoxanthine"
  , name_latvian: "Kriptoksantīns"
  , e_number: "E161c"
  , group: Colour
  , source: []
  , description: "Yellow colouring"
  , kosher: NeedHashgohoWholeYear
}

e161d :: ENumber
e161d = {
  name_english: "Rubixanthin"
  , name_russian: "Рубиксантин"
  , name_german: "Rubixanthin"
  , name_hebrew: "רוביקסנטין"
  , name_french: "Rubixanthine"
  , name_latvian: "Rubiksantīns"
  , e_number: "E161d"
  , group: Colour
  , source: []
  , description: "Yellow colouring"
  , kosher: NeedHashgohoWholeYear
}

e161e :: ENumber
e161e = {
  name_english: "Violaxanthin"
  , name_russian: "Виолаксантин"
  , name_german: "Violaxanthin"
  , name_hebrew: "ויולקסנטין"
  , name_french: "Violaxanthine"
  , name_latvian: "Violoksantīns"
  , e_number: "E161e"
  , group: Colour
  , source: []
  , description: "Yellow colouring"
  , kosher: NeedHashgohoWholeYear
}

e161f :: ENumber
e161f = {
  name_english: "Rhodoxanthin"
  , name_russian: "Родоксантин"
  , name_german: "Rhodoxanthin"
  , name_hebrew: "רודוקסנטין"
  , name_french: "Rhodoxanthine"
  , name_latvian: "Rodoksantīns"
  , e_number: "E161f"
  , group: Colour
  , source: []
  , description: "Yellow colouring"
  , kosher: NeedHashgohoWholeYearSomeAllow
}

e161g :: ENumber
e161g = {
  name_english: "Canthaxanthin"
  , name_russian: "Кантаксантин"
  , name_german: "Canthaxanthin"
  , name_hebrew: "קנתקסנטין"
  , name_french: "Canthaxanthine"
  , name_latvian: "Kantaksantīns"
  , e_number: "E161g"
  , group: Colour
  , source: [Synthetic, Vegan]
  , description: "Yellow colouring"
  , kosher: NeedHashgohoWholeYear
}

e161h :: ENumber
e161h = {
  name_english: "Zeaxanthin"
  , name_russian: "Зеаксантин"
  , name_german: "Zeaxanthin"
  , name_hebrew: "זאקסנטין"
  , name_french: "Zéaxanthine"
  , name_latvian: "Zeaxantīns"
  , e_number: "E161h"
  , group: Colour
  , source: []
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e161i :: ENumber
e161i = {
  name_english: "Citranaxantin"
  , name_russian: "Цитранаксантин"
  , name_german: "Citranaxantin"
  , name_hebrew: "ציטרנקסנטין"
  , name_french: "Citranaxanthine"
  , name_latvian: "Citranaksantīns"
  , e_number: "E161i"
  , group: Colour
  , source: []
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e161j :: ENumber
e161j = {
  name_english: "Astaxanthin"
  , name_russian: "Астаксантин"
  , name_german: "Astaxanthin"
  , name_hebrew: "אסטקסנטין"
  , name_french: "Astaxanthine"
  , name_latvian: "Astaksantīns"
  , e_number: "E161j"
  , group: Colour
  , source: []
  , description: "Red colouring"
  , kosher: NeedHashgohoWholeYear
}

e162 :: ENumber
e162 = {
  name_english: "Beetroot Red, Betanin"
  , name_russian: "Свекольный красный, Бетанин"
  , name_german: "Rote Beete, Betanin"
  , name_hebrew: "אדום סלק, בטנין"
  , name_french: "Rouge de betterave, Betanine"
  , name_latvian: "Biešu sarkanais, Betanīns"
  , e_number: "E162"
  , group: Colour
  , source: [Vegan, Wine]
  , description: "Red colouring; C.I: 16255"
  , kosher: KosherIncludingPassover
}

e163 :: ENumber
e163 = {
  name_english: "Anthocyanins"
  , name_russian: "Антоцианы"
  , name_german: "Anthocyane"
  , name_hebrew: "אנתוציאנינים"
  , name_french: "Anthocyanes"
  , name_latvian: "Antocianīni"
  , e_number: "E163"
  , group: Colour
  , source: [Vegan]
  , description: "Red/Blue colouring"
  , kosher: NeedHashgohoWholeYear
}

e170 :: ENumber
e170 = {
  name_english: "Calcium carbonate"
  , name_russian: "Карбонат кальция, Кальций углекислый"
  , name_german: "Calciumcarbonat"
  , name_hebrew: "פחמן סידן"
  , name_french: "Carbonate de calcium"
  , name_latvian: "Kalcija karbonāti kalcija karbonāts, kalcija hidrogēnkarbonāts"
  , e_number: "E170"
  , group: Colour
  , source: [Vegan]
  , description: "White colouring"
  , kosher: KosherIncludingPassover
}

e171 :: ENumber
e171 = {
  name_english: "Titanium dioxide"
  , name_russian: "Диоксид титана, Двуокись титана"
  , name_german: "Titandioxid"
  , name_hebrew: "דו-חמצני טיטניום"
  , name_french: "Dioxyde de titane"
  , name_latvian: "Titāna dioksīds"
  , e_number: "E171"
  , group: Colour
  , source: [Synthetic]
  , description: "White colouring"
  , kosher: KosherIncludingPassover
}

e172 :: ENumber
e172 = {
  name_english: "Iron oxides and hydroxides (Yellow-brown)"
  , name_russian: "Оксиды и гидрооксиды железа"
  , name_german: "Eisenoxide und -hydroxide"
  , name_hebrew: "מיצקי ברזל והידרוקסידים"
  , name_french: "Oxydes et hydroxydes de fer"
  , name_latvian: "Dzelzs oksīdi un hidroksīdi"
  , e_number: "E172"
  , group: Colour
  , source: [Vegan]
  , description: "Yellow/Red/Brown/Black colouring"
  , kosher: KosherIncludingPassover
}

e173 :: ENumber
e173 = {
  name_english: "Aluminium"
  , name_russian: "Алюминий"
  , name_german: "Aluminium"
  , name_hebrew: "אלומיניום"
  , name_french: "Aluminium"
  , name_latvian: "Alumīnijs"
  , e_number: "E173"
  , group: Colour
  , source: [Vegan]
  , description: "Silver colouring; Not Allowed"
  , kosher: KosherForbidden
}

e174 :: ENumber
e174 = {
  name_english: "Silver"
  , name_russian: "Серебро"
  , name_german: "Silber"
  , name_hebrew: "כסף"
  , name_french: "Argent"
  , name_latvian: "Sudrabs"
  , e_number: "E174"
  , group: Colour
  , source: [Vegan]
  , description: "Silver colouring"
  , kosher: KosherIncludingPassover
}

e175 :: ENumber
e175 = {
  name_english: "Gold"
  , name_russian: "Золото"
  , name_german: "Gold"
  , name_hebrew: "זהב"
  , name_french: "Or"
  , name_latvian: "Zelts"
  , e_number: "E175"
  , group: Colour
  , source: [Vegan]
  , description: "Gold colouring"
  , kosher: KosherIncludingPassover
}

e180 :: ENumber
e180 = {
  name_english: "Pigment rubine (Litholrubine BK)"
  , name_russian: "Рубиновый литол ВК"
  , name_german: "Litholrubin BK"
  , name_hebrew: "ליתולרובין BK"
  , name_french: "Litholrubine BK"
  , name_latvian: "Litolrubīns BK"
  , e_number: "E180"
  , group: Colour
  , source: [Synthetic]
  , description: "Red colouring; C.I: 18050"
  , kosher: KosherIncludingPassover
}

e181 :: ENumber
e181 = {
  name_english: "Tannin"
  , name_russian: "Танин"
  , name_german: "Tannin"
  , name_hebrew: "טנין"
  , name_french: "Tannin"
  , name_latvian: "Tannīns"
  , e_number: "E181"
  , group: Colour
  , source: []
  , description: "Brown colouring"
  , kosher: KosherIncludingPassover
}

e182 :: ENumber
e182 = {
  name_english: "Orcein, Orchil"
  , name_russian: "Орцеин, Орхил"
  , name_german: "Orcein, Orchil"
  , name_hebrew: "אורסין, אורכיל"
  , name_french: "Orcéine, Orchil"
  , name_latvian: "Orceīns, Orhils"
  , e_number: "E182"
  , group: Colour
  , source: []
  , description: "Red colouring"
  , kosher: KosherNeedPassoverHashgoho
}


