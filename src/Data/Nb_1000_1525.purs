
-- Additional chemicals
module Data.Nb1000to1525 (additionalChemicalsList) where

import Data.ENumberTypes (AdditiveGroup(..), ENumber, ENumberList, Kashrut(..), Source(..), emptyENumberList, insertEntry)

infixr 5 insertEntry as ++

additionalChemicalsList :: ENumberList
additionalChemicalsList = e1000 ++ e1001 ++
 e1100 ++ e1101 ++ e1102 ++ e1103 ++ e1104 ++ e1105 ++ e1200 ++ e1201 ++ e1202 ++ e1204 ++ e1400 ++ e1401 ++ e1402 ++ e1403 ++ e1404 ++ e1405 ++ e1410 ++ e1411 ++ e1412 ++ e1413 ++ e1414 ++ e1420 ++ e1421 ++ e1422 ++ e1423 ++ e1430 ++ e1440 ++ e1441 ++ e1442 ++ e1443 ++ e1450 ++ e1451 ++ e1452 ++ e1501 ++ e1502 ++ e1503 ++ e1504 ++ e1505 ++ e1510 ++ e1516 ++ e1517 ++ e1518 ++ e1519 ++ e1520 ++ e1521 ++ e1525 ++
  emptyENumberList

e1000 :: ENumber
e1000 = {
  name_english: "Cholic acid"
  , name_russian: "Холевая кислота"
  , name_german: "Cholsäure"
  , name_hebrew: "חומצה כולית"
  , name_french: "Acide cholique"
  , name_latvian: "Holskābe"
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
  , name_latvian: "Holīna sāli"
  , e_number: "E1001"
  , group: Emulsifier
  , source: []
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e1100 :: ENumber
e1100 = {
  name_english: "Amylase"
  , name_russian: "Амилаза"
  , name_german: "Amylase"
  , name_hebrew: "אמילאזה"
  , name_french: "Amylase"
  , name_latvian: "Amilāze"
  , e_number: "E1100"
  , group: FlavourEnchancer
  , source: []
  , description: ""
  , kosher: NeedHashgohoWholeYearSomeAllow
}

e1101 :: ENumber
e1101 = {
  name_english: "Proteases ((i)Protease, (ii)Papain, (iii)Bromelain, (iv)Ficin)"
  , name_russian: "Протеазы ((i)Протеаза, (ii)Папаин, (iii)Бромелаин, (iv)Фицин)"
  , name_german: "Proteasen ((i)Protease, (ii)Papain, (iii)Bromelain, (iv)Ficin)"
  , name_hebrew: "פרוטאזים ((i)פרוטאזה, (ii)פפאין, (iii)ברומלאין, (iv)פיצין)"
  , name_french: "Protéases ((i)Protéase, (ii)Papaïne, (iii)Bromélaïne, (iv)Ficine)"
  , name_latvian: "Proteāzes ((i)Proteāze, (ii)Papains, (iii)Bromelains, (iv)Ficins)"
  , e_number: "E1101"
  , group: FlavourEnchancer
  , source: []
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e1102 :: ENumber
e1102 = {
  name_english: "Glucose oxidase"
  , name_russian: "Глюкозоксидаза"
  , name_german: "Glukoseoxidase"
  , name_hebrew: "גלוקוז אוקסידאז"
  , name_french: "Glucose oxydase"
  , name_latvian: "Glukozes oksidāze"
  , e_number: "E1102"
  , group: Antioxidant
  , source: []
  , description: ""
  , kosher: NeedHashgohoWholeYearSomeAllow
}

e1103 :: ENumber
e1103 = {
  name_english: "Invertase"
  , name_russian: "Инвертаза"
  , name_german: "Invertase"
  , name_hebrew: "אינוורטאז"
  , name_french: "Invertase"
  , name_latvian: "Invertāze"
  , e_number: "E1103"
  , group: Stabilizer
  , source: []
  , description: ""
  , kosher: NeedHashgohoWholeYearSomeAllow
}

e1104 :: ENumber
e1104 = {
   name_english: "Lipases"
  , name_russian: "Липазы"
  , name_german: "Lipasen"
  , name_hebrew: "ליפאזים"
  , name_french: "Lipases"
  , name_latvian: "Lipāzes"
  , e_number: "E1104" 
  , group: None
  , source: []
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e1105 :: ENumber
e1105 = {
  name_english: "Lysozyme"
  , name_russian: "Лизоцим"
  , name_german: "Lysozym"
  , name_hebrew: "ליזוזים"
  , name_french: "Lysozyme"
  , name_latvian: "Lizocīms"
  , e_number: "E1105"
  , group: None
  , source: [Chametz]
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e1200 :: ENumber
e1200 = {
  name_english: "Polydextroses A and N"
  , name_russian: "Полидекстрозы A и N"
  , name_german: "Polydextrosen A und N"
  , name_hebrew: "פולידקסטרוז A ו N"
  , name_french: "Polydextroses A et N"
  , name_latvian: "Polidekstrozes A un N"
  , e_number: "E1200"
  , group: Stabilizer
  , source: [Chametz]
  , description: ""
  , kosher: NeedHashgohoWholeYearSomeAllow
}

e1201 :: ENumber
e1201 = {
  name_english: "Polyvinylpyrrolidone"
  , name_russian: "Поливинилпирролидон"
  , name_german: "Polyvinylpyrrolidon"
  , name_hebrew: "פוליבינילפירולידון"
  , name_french: "Polyvinylpyrrolidone"
  , name_latvian: "Polivinilpirolidons"
  , e_number: "E1201"
  , group: Stabilizer
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e1202 :: ENumber
e1202 = {
  name_english: "Polyvinylpolypyrrolidone"
  , name_russian: "Поливинилполипирролидон"
  , name_german: "Polyvinylpolypyrrolidon"
  , name_hebrew: "פוליבינילפוליפירולידון"
  , name_french: "Polyvinylpolypyrrolidone"
  , name_latvian: "Polivinilpolipirolidons"
  , e_number: "E1202"
  , group: Stabilizer
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e1204 :: ENumber
e1204 = {
  name_english: "Pullulan"
  , name_russian: "Пуллулан"
  , name_german: "Pullulan"
  , name_hebrew: "פולולן"
  , name_french: "Pullulan"
  , name_latvian: "Pullulāns"
  , e_number: "E1204"
  , group: Stabilizer
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e1400 :: ENumber
e1400 = {
  name_english: "Dextrin (Dextrins, roasted starch white and yellow)"
  , name_russian: "Декстрин (Декстрины, обжаренный крахмал белый и желтый)"
  , name_german: "Dextrin (Dextrine, geröstete Stärke weiß und gelb)"
  , name_hebrew: "דקסטרין (דקסטרינים, תירוש קמח לבן וצהוב)"
  , name_french: "Dextrine (Dextrines, amidon rôti blanc et jaune)"
  , name_latvian: "Dekstrīns (Dekstrīni, apceptais cietes balts un dzeltens)"
  , e_number: "E1400"
  , group: Stabilizer
  , source: []
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e1401 :: ENumber
e1401 = {
  name_english: "Modified starch (Acid-treated starch)"
  , name_russian: "Модифицированный крахмал (Кислотно-обработанный крахмал)"
  , name_german: "Modifizierte Stärke (Säurebehandelter Stärke)"
  , name_hebrew: "עמילן מותאם (עמילן מעובד בחומצה)"
  , name_french: "Amidon modifié (Amidon traité à l'acide)"
  , name_latvian: "Modificēta ciete (Skābju apstrādāta ciete)"
  , e_number: "E1401"
  , group: Stabilizer
  , source: []
  , description: ""
  -- TODO: doublecheck kashrut if possible
  , kosher: NeedHashgohoWholeYear
}

e1402 :: ENumber
e1402 = {
  name_english: "Alkaline modified starch"
  , name_russian: "Щелочной модифицированный крахмал"
  , name_german: "Alkalisch modifizierte Stärke"
  , name_hebrew: "עמילן מותאם אלקלית"
  , name_french: "Amidon modifié alcalin"
  , name_latvian: "Alkāliski modificēta ciete"
  , e_number: "E1402"
  , group: Stabilizer
  , source: []
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e1403 :: ENumber
e1403 = {
  name_english: "Bleached starch"
  , name_russian: "Отбеленный крахмал"
  , name_german: "Gebleichte Stärke"
  , name_hebrew: "עמילן מבהיק"
  , name_french: "Amidon blanchi"
  , name_latvian: "Baltināta ciete"
  , e_number: "E1403"
  , group: Stabilizer
  , source: []
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e1404 :: ENumber
e1404 = {
  name_english: "Oxidized starch"
  , name_russian: "Окисленный крахмал"
  , name_german: "Oxidierte Stärke"
  , name_hebrew: "עמילן מחמצן"
  , name_french: "Amidon oxydé"
  , name_latvian: "Oksidēta ciete"
  , e_number: "E1404"
  , group: Stabilizer
  , source: [Chametz]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e1405 :: ENumber
e1405 = {
  name_english: "Enzyme treated starch"
  , name_russian: "Ферментативно обработанный крахмал"
  , name_german: "Fermentativ behandelte Stärke"
  , name_hebrew: "עמילן מעובד באמצעות אנזימים"
  , name_french: "Amidon traité enzymatiquement"
  , name_latvian: "Enzīmātiski apstrādāta ciete"
  , e_number: "E1405"
  , group: None
  , source: []
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e1410 :: ENumber
e1410 = {
  name_english: "Monostarch phosphate"
  , name_russian: "Монокрахмал- фосфат"
  , name_german: "Monostärkephosphat"
  , name_hebrew: "מונו-עמילן-פוספט"
  , name_french: "Phosphate de monostarch"
  , name_latvian: "Monocietes fosfāts"
  , e_number: "E1410"
  , group: Stabilizer
  , source: [Chametz]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e1411 :: ENumber
e1411 = {
  name_english: "Distarch glycerol"
  , name_russian: "Ди-крахмальный глицерин"
  , name_german: "Distärkeglycerol"
  , name_hebrew: "די-עמילן גליצרול"
  , name_french: "Glycérol de distarch"
  , name_latvian: "Dicietes glicerīns"
  , e_number: "E1411"
  , group: Emulsifier
  , source: []
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e1412 :: ENumber
e1412 = {
  name_english: "Distarch phosphate"
  , name_russian: "Ди-крахмальный фосфат"
  , name_german: "Distärkephosphat"
  , name_hebrew: "די-עמילן פוספט"
  , name_french: "Phosphate de distarch"
  , name_latvian: "Dicietes fosfāts"
  , e_number: "E1412"
  , group: Stabilizer
  , source: []
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e1413 :: ENumber
e1413 = {
  name_english: "Phosphated distarch phosphate"
  , name_russian: "Фосфатированный ди-крахмальный фосфат"
  , name_german: "Phosphatiertes Distärkephosphat"
  , name_hebrew: "פוספט די-עמילן פוספט"
  , name_french: "Phosphate de distarch phosphaté"
  , name_latvian: "Fosfatētas dicietes fosfāts"
  , e_number: "E1413"
  , group: Stabilizer
  , source: []
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e1414 :: ENumber
e1414 = {
  name_english: "Acetylated distarch phosphate"
  , name_russian: "Ацетилированный ди-крахмальный фосфат"
  , name_german: "Acetyliertes Distärkephosphat"
  , name_hebrew: "אצטילט די-עמילן פוספט"
  , name_french: "Phosphate de distarch acétylé"
  , name_latvian: "Acetilētas dicietes fosfāts"
  , e_number: "E1414"
  , group: Emulsifier
  , source: [Chametz]
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e1420 :: ENumber
e1420 = {
  name_english: "Starch acetate esterified with acetic anhydride"
  , name_russian: "Крахмал ацетат, эфирированный уксусной кислотой"
  , name_german: "Stärkeacetat, essigsaure verestert"
  , name_hebrew: "עמילן אצטט, מאואסטריפי עם חומצה חצוצרת"
  , name_french: "Acétate d'amidon estérifié à l'anhydride acétique"
  , name_latvian: "Acetilēta ciete"
  , e_number: "E1420"
  , group: Stabilizer
  , source: [Chametz]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e1421 :: ENumber
e1421 = {
  name_english: "Starch acetate esterified with vinyl acetate"
  , name_russian: "Крахмал ацетат, эфирированный уксусной кислотой"
  , name_german: "Stärkeacetat, vinylacetat verestert"
  , name_hebrew: "עמילן אצטט, מאואסטריפי עם חומצה חצוצרת"
  , name_french: "Acétate d'amidon estérifié à l'acétate de vinyle"
  , name_latvian: "Cietes acetāts, esterificēts ar vinila acetātu"
  , e_number: "E1421"
  , group: Stabilizer
  , source: [Chametz]
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e1422 :: ENumber
e1422 = {
  name_english: "Acetylated distarch adipate"
  , name_russian: "Ацетилированный дикрахмал-адипат"
  , name_german: "Acetyliertes Distärkeadipat"
  , name_hebrew: "אצטיל־עמילן-אדיפאט"
  , name_french: "Adipate de distarch acétylé"
  , name_latvian: "Acetilētas dicietes adipināts"
  , e_number: "E1422"
  , group: Stabilizer
  , source: [Chametz]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e1423 :: ENumber
e1423 = {
  name_english: "Acetylated distarch glycerol"
  , name_russian: "Ацетилированный дикрахмал-глицерин"
  , name_german: "Acetyliertes Distärkeglycerol"
  , name_hebrew: "אצטיל־עמילן-גליצרול"
  , name_french: "Glycérol de distarch acétylé"
  , name_latvian: "Acetilēts dicietes glicerīns"
  , e_number: "E1423"
  , group: Stabilizer
  , source: []
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e1430 :: ENumber
e1430 = {
  name_english: "Distarch glycerine"
  , name_russian: "Дикрахмал глицерин"
  , name_german: "Distärkeglycerin"
  , name_hebrew: "די-עמילן גליצרין"
  , name_french: "Glycérol de distarch"
  , name_latvian: "Dicietes glicerīns"
  , e_number: "E1430"
  , group: Stabilizer
  , source: []
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e1440 :: ENumber
e1440 = {
  name_english: "Hydroxy propyl starch"
  , name_russian: "Оксипропилированный крахмал"
  , name_german: "Hydroxypropylstärke"
  , name_hebrew: "הידרוקסי פרופיל עמילן"
  , name_french: "Amidon hydroxypropylé"
  , name_latvian: "Hidroksipropilciete"
  , e_number: "E1440"
  , group: Emulsifier
  , source: [Chametz]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e1441 :: ENumber
e1441 = {
  name_english: "Hydroxy propyl distarch glycerine"
  , name_russian: "Гидроксипропил дикрахмал глицерин"
  , name_german: "Hydroxypropyl distärkeglycerin"
  , name_hebrew: "הידרוקסי פרופיל די-עמילן גליצרין"
  , name_french: "Glycérol de distarch hydroxypropylé"
  , name_latvian: "Hidroksipropilcietes glicerīns"
  , e_number: "E1441"
  , group: Stabilizer
  , source: []
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e1442 :: ENumber
e1442 = {
  name_english: "Hydroxy propyl distarch phosphate"
  , name_russian: "Оксипропилированный дикрахмалфосфат"
  , name_german: "Hydroxypropyl distärkephosphat"
  , name_hebrew: "הידרוקסי פרופיל די-עמילן פוספט"
  , name_french: "Phosphate de distarch hydroxypropylé"
  , name_latvian: "Hidroksipropildicietes fosfāts"
  , e_number: "E1442"
  , group: Stabilizer
  , source: [Chametz]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e1443 :: ENumber
e1443 = {
  name_english: "Hydroxy propyl distarch glycerol"
  , name_russian: "Гидроксипропил дикрахмал глицерин"
  , name_german: "Hydroxypropyl distärkeglycerin"
  , name_hebrew: "הידרוקסי פרופיל די-עמילן גליצרין"
  , name_french: "Glycérol de distarch hydroxypropylé"
  , name_latvian: "Hidroksipropilcietes glicerīns"
  , e_number: "E1443"
  , group: None
  , source: []
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e1450 :: ENumber
e1450 = {
  name_english: "Starch sodium octenyl succinate"
  , name_russian: "Эфир крахмала и натриевой соли октенилянтарной кислоты"
  , name_german: "Stärke-Natriumoctenylsuccinat"
  , name_hebrew: "עמילן נתרן אוקטניל סוקסינט"
  , name_french: "Succinate d'octényl de sodium d'amidon"
  , name_latvian: "Cietes nātrija oktenilsukcināts"
  , e_number: "E1450"
  , group: Emulsifier
  , source: []
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e1451 :: ENumber
e1451 = {
  name_english: "Acetylated oxidised starch"
  , name_russian: "Ацетилированный окисленный крахмал"
  , name_german: "Acetylierte oxidierte Stärke"
  , name_hebrew: "אצטילט עמילן מחמצן"
  , name_french: "Amidon oxydé acétylé"
  , name_latvian: "Acetilēta oksidēta ciete"
  , e_number: "E1451"
  , group: Emulsifier
  , source: []
  , description: ""
  , kosher: NeedHashgohoWholeYearSomeAllow
}

e1452 :: ENumber
e1452 = {
  name_english: "Starch aluminium octenyl succinate"
  , name_russian: "Эфир крахмала и алюминиевой соли октенилянтарной кислоты"
  , name_german: "Stärke-Aluminiumoctenylsuccinat"
  , name_hebrew: "עמילן אלומיניום אוקטניל סוקסינט"
  , name_french: "Succinate d'octényl d'amidon d'aluminium"
  , name_latvian: "Cietes alumīnija oktenilsukcināts"
  , e_number: "E1452"
  , group: None
  , source: []
  , description: ""
  , kosher: NeedHashgohoWholeYearSomeAllow
}

e1501 :: ENumber
e1501 = {
  name_english: "Benzylated hydrocarbons"
  , name_russian: "Бензилированные углеводороды"
  , name_german: "Benzilierte Kohlenwasserstoffe"
  , name_hebrew: "הידרוקרבונים בנזילט"
  , name_french: "Hydrocarbures benzylés"
  , name_latvian: "Benzilēti ogļūdeņraži"
  , e_number: "E1501"
  , group: None
  , source: []
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e1502 :: ENumber
e1502 = {
  name_english: "Butane-1, 3-diol"
  , name_russian: "Бутан-1, 3-диол"
  , name_german: "Butan-1, 3-diol"
  , name_hebrew: "בוטאן-1, 3-דיול"
  , name_french: "Butane-1, 3-diol"
  , name_latvian: "Butāns-1, 3-diols"
  , e_number: "E1502"
  , group: None
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e1503 :: ENumber
e1503 = {
  name_english: "Castor oil"
  , name_russian: "Касторовое масло"
  , name_german: "Rizinusöl"
  , name_hebrew: "שמן קיק"
  , name_french: "Huile de ricin"
  , name_latvian: "Ricīna eļļa"
  , e_number: "E1503"
  , group: None
  , source: []
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e1504 :: ENumber
e1504 = {
  name_english: "Ethyl acetate"
  , name_russian: "Этилацетат"
  , name_german: "Ethylacetat"
  , name_hebrew: "אתיל אצטט"
  , name_french: "Acétate d'éthyle"
  , name_latvian: "Etīla acetāts"
  , e_number: "E1504"
  , group: None
  , source: []
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e1505 :: ENumber
e1505 = {
  name_english: "Triethyl citrate"
  , name_russian: "Триэтилцитрат"
  , name_german: "Triethylcitrat"
  , name_hebrew: "טריאתיל ציטרט"
  , name_french: "Citrate de triéthyle"
  , name_latvian: "Trietilcitrāts"
  , e_number: "E1505"
  , group: None
  , source: []
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e1510 :: ENumber
e1510 = {
  name_english: "Ethanol"
  , name_russian: "Этанол"
  , name_german: "Ethanol"
  , name_hebrew: "אתנול"
  , name_french: "Éthanol"
  , name_latvian: "Etanols"
  , e_number: "E1510"
  , group: None
  , source: []
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e1516 :: ENumber
e1516 = {
  name_english: "Glyceryl monoacetate"
  , name_russian: "Глицерил моноацетат"
  , name_german: "Glycerylmonoacetat"
  , name_hebrew: "גליצריל מונואצטט"
  , name_french: "Monoacétate de glycéryle"
  , name_latvian: "Glicerīla monoacetāts"
  , e_number: "E1516"
  , group: None
  , source: []
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e1517 :: ENumber
e1517 = {
  name_english: "Glyceryl diacetate (diacetin)"
  , name_russian: "Глицерил диацетат (диацетин)"
  , name_german: "Glyceryldiacetat (Diacetin)"
  , name_hebrew: "גליצריל די-אצטט או די-אצטין"
  , name_french: "Diacétate de glycéryle (diacétine)"
  , name_latvian: "Glicerīldiacetāts (diacetīns)"
  , e_number: "E1517"
  , group: None
  , source: []
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e1518 :: ENumber
e1518 = {
  name_english: "Glyceryl triacetate (triacetin)"
  , name_russian: "Глицерил триацетат (триацетин)"
  , name_german: "Glyceryltriacetat (Triacetin)"
  , name_hebrew: "גליצריל טריאצטט או טריאטין"
  , name_french: "Triacétate de glycéryle (triacétine)"
  , name_latvian: "Glicerīltriacetāts (triacetīns)"
  , e_number: "E1518"
  , group: None
  , source: []
  , description: ""
  , kosher: NeedHashgohoWholeYear
}


e1519 :: ENumber
e1519 = {
  name_english: "Benzyl alcohol"
  , name_russian: "Бензиловый спирт"
  , name_german: "Benzylalkohol"
  , name_hebrew: "אלכוהול בנזילי"
  , name_french: "Alcool benzylique"
  , name_latvian: "Benzilspirts"
  , e_number: "E1519"
  , group: None
  , source: []
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e1520 :: ENumber
e1520 = {
  name_english: "Propylene glycol"
  , name_russian: "Пропиленгликоль"
  , name_german: "Propylenglykol"
  , name_hebrew: "פרופילן גליקול"
  , name_french: "Propylène glycol"
  , name_latvian: "Propilēnglikols (Propān-1,2-diols)"
  , e_number: "E1520"
  , group: None
  , source: []
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e1521 :: ENumber
e1521 = {
  name_english: "Polyethylene glycol"
  , name_russian: "Полиэтиленгликоль"
  , name_german: "Polyethylenglykol"
  , name_hebrew: "פוליאתילן גליקול"
  , name_french: "Polyéthylène glycol"
  , name_latvian: "Polietilēnglikols"
  , e_number: "E1521"
  , group: None
  , source: []
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e1525 :: ENumber
e1525 = {
  name_english: "Hydroxyethyl cellulose"
  , name_russian: "Гидроксиэтилцеллюлоза"
  , name_german: "Hydroxyethylcellulose"
  , name_hebrew: "הידרוקסיאתיל צלולוז"
  , name_french: "Hydroxyéthylcellulose"
  , name_latvian: "Hidroksietilceluloze"
  , e_number: "E1525"
  , group: None
  , source: []
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}