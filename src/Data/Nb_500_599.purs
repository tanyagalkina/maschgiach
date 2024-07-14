-- pH Regulators & antiCaking Agents (500-599)

module Data.Nb500to599 (regulatorENumberList) where

import Prelude

import Data.ENumberTypes (AdditiveGroup(..), ENumberList, Kashrut(..), Source(..), ENumber, emptyENumberList, insertEntry)

-- import Data.Number (e)

infixr 5 insertEntry as ++

regulatorENumberList :: ENumberList
regulatorENumberList =  e500 ++ e501 ++ e503 ++ e504 ++ e505 ++ e507 ++ e508 ++ e509 ++ e510 ++ e511 ++ e512 ++ e513 ++ e514 ++ e515 ++ e516 ++ e517 ++ e518 ++ e519 ++ e520 ++ e521 ++ e522 ++ e523 ++ e524 ++ e525 ++ e526 ++ e527 ++ e528 ++ e529 ++ e530 ++ e535 ++ e536 ++ e537 ++ e538 ++ e539 ++ e540 ++ e541 ++ e542 ++ e543 ++ e544 ++ e545 ++ e550 ++ e551 ++ e552 ++ e553a ++ e553b ++ e554 ++ e555 ++ e556 ++ e557 ++ e558 ++ e559 ++ e560 ++ e561 ++ e562 ++ e563 ++ e565 ++ e566 ++ e570 ++ e572 ++ e574 ++ e575 ++ e576 ++ e577 ++ e578 ++ e579 ++ e580 ++ e585 ++ e586 ++ e598 ++ e599 ++
  emptyENumberList

e500 :: ENumber
e500 = {
  name_english: "Sodium Carbonate Sodium hydrogen carbonate (Sodium bicarbonate; Baking soda; Bicabonate of soda) "
  , name_russian: "Углекислый натрий, гидрокарбонат натрия (натрий бикарбонат, пищевая сода)"
  , name_german: "Natriumcarbonat, Natriumhydrogencarbonat (Natron, Backsoda, Speisesoda)"
  , name_hebrew: "סודיום קרבונט, סודיום הידרוגנקרבונט (סודיום ביקרבונט, סודיום קרבונט, סודיום קרבונט)"
  , name_french: "Carbonate de sodium, Hydrogénocarbonate de sodium (Bicarbonate de soude)"
  , name_latvian: "Nātrija karbonāts, Nātrija hidrogēnkarbonāts (Soda, Sālsoda)"
 <> "Sodium sesquicarbonate (Trona), "
 <> "Natriumcarbonat (Soda)" 
  , e_number: "E500"
  , group: AcidityRegulator 
  , source: [Vegan]
  , description: ""
  , kosher: KosherIncludingPassover
}

e501 :: ENumber
e501 = {
  name_english: "Potassium carbonates (Potassium carbonate, Potassium hydrogen carbonate)"
  , name_russian: "Калиевые карбонаты (калий карбонат, калий гидрокарбонат)"
  , name_german: "Kaliumcarbonate (Kaliumcarbonat, Kaliumhydrogencarbonat)"
  , name_hebrew: "פוטסיום קרבונטים (פוטסיום קרבונט, פוטסיום הידרוגנקרבונט)"
  , name_french: "Carbonates de potassium (Carbonate de potassium, Hydrogénocarbonate de potassium)"
  , name_latvian: "Kālija karbonāti (Kālija karbonāts, Kālija hidrogēnkarbonāts)"
  , e_number: "E501"
  , group: AcidityRegulator
  , source: [Vegan]
  , description: ""
  , kosher: KosherIncludingPassover
}

e503 :: ENumber
e503 = {
  name_english: "Ammonium carbonates (Ammonium carbonate, Ammonium hydrogen carbonate)"
  , name_russian: "Карбонаты аммония (аммоний карбонат, аммоний гидрокарбонат)"
  , name_german: "Ammoniumcarbonate (Ammoniumcarbonat, Ammoniumhydrogencarbonat)"
  , name_hebrew: "אמוניום קרבונטים (אמוניום קרבונט, אמוניום הידרוגנקרבונט)"
  , name_french: "Carbonates d'ammonium (Carbonate d'ammonium, Hydrogénocarbonate d'ammonium)"
  , name_latvian: "Amonija karbonāti (Amonija karbonāts, Amonija hidrogēnkarbonāts)"
  , e_number: "E503"
  , group: AcidityRegulator
  , source: [Synthetic]
  , description: ""
  , kosher: KosherIncludingPassover
}

e504 :: ENumber
e504 = {
  name_english: "Magnesium carbonates (Magnesium carbonate, Magnesium hydroxide carbonate, Magnesium hydrogen carbonate)"
  , name_russian: "Карбонаты магния (магний карбонат, магний гидроксид карбонат, магний гидрокарбонат)"
  , name_german: "Magnesiumcarbonate (Magnesiumcarbonat, Magnesiumhydroxidcarbonat, Magnesiumhydrogencarbonat)"
  , name_hebrew: "מגנזיום קרבונטים (מגנזיום קרבונט, מגנזיום הידרוקסיד קרבונט, מגנזיום הידרוגנקרבונט)"
  , name_french: "Carbonates de magnésium (Carbonate de magnésium, Hydrogénocarbonate de magnésium)"
  , name_latvian: "Magnija karbonāti (Magnija karbonāts, Magnija hidroksīda karbonāts, Magnija hidrogēnkarbonāts)"
  , e_number: "E504"
  , group: AcidityRegulator
  , source: [Synthetic]
  , description: ""
  , kosher: KosherIncludingPassover
}

e505 :: ENumber
e505 = {
  name_english: "Ferrous carbonate"
  , name_russian: "Карбонат железа"
  , name_german: "Eisen(II)-carbonat"
  , name_hebrew: "פרוס קרבונט"
  , name_french: "Carbonate ferreux"
  , name_latvian: "Dzelzs karbonāts"
  , e_number: "E505"
  , group: AcidityRegulator
  , source: [Vegan]
  , description: ""
  , kosher: KosherIncludingPassover
}

e507 :: ENumber
e507 = {
  name_english: "Hydrochloric acid"
  , name_russian: "Соляная кислота"
  , name_german: "Salzsäure"
  , name_hebrew: "חומצה מלחית"
  , name_french: "Acide chlorhydrique"
  , name_latvian: "Hlorīdskābe"
  , e_number: "E507"
  , group: Acid
  , source: [Synthetic]
  , description: ""
  , kosher: KosherIncludingPassover
}

e508 :: ENumber
e508 = {
  name_english: "Potassium chloride"
  , name_russian: "Хлорид калия"
  , name_german: "Kaliumchlorid"
  , name_hebrew: "כלוריד פוטסיום"
  , name_french: "Chlorure de potassium"
  , name_latvian: "Kālija hlorīds"
  , e_number: "E508"
  , group: GellingAgent
  , source: [Vegan]
  , description: ""
  , kosher: KosherIncludingPassover
}

e509 :: ENumber
e509 = {
  name_english: "Calcium chloride"
  , name_russian: "Хлорид кальция"
  , name_german: "Calciumchlorid"
  , name_hebrew: "כלוריד סידן"
  , name_french: "Chlorure de calcium"
  , name_latvian: "Kalcija hlorīds"
  , e_number: "E509"
  -- TODO: check and add the group "firming agent" https://en.wikipedia.org/wiki/Firming_agent
  , group: None
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e510 :: ENumber
e510 = {
  name_english: "Ammonium chloride"
  , name_russian: "Хлорид аммония"
  , name_german: "Ammoniumchlorid"
  , name_hebrew: "כלוריד אמוניום"
  , name_french: "Chlorure d'ammonium"
  , name_latvian: "Amonija hlorīds"
  , e_number: "E510"
  , group: AcidityRegulator
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e511 :: ENumber
e511 = {
  name_english: "Magnesium chloride"
  , name_russian: "Хлорид магния"
  , name_german: "Magnesiumchlorid"
  , name_hebrew: "כלוריד מגנזיום"
  , name_french: "Chlorure de magnésium"
  , name_latvian: "Magnija hlorīds"
  , e_number: "E511"
  -- TODO: check and add the group "firming agent" https://en.wikipedia.org/wiki/Firming_agent
  , group: None
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e512 :: ENumber
e512 = {
  name_english: "Stannous chloride"
  , name_russian: "Хлорид олова"
  , name_german: "Zinn(II)-chlorid"
  , name_hebrew: "כלוריד עפרון"
  , name_french: "Chlorure d'étain"
  , name_latvian: "Cinka hlorīds"
  , e_number: "E512"
  , group: Antioxidant
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e513 :: ENumber
e513 = {
  name_english: "Sulphuric acid"
  , name_russian: "Серная кислота"
  , name_german: "Schwefelsäure"
  , name_hebrew: "חומצה גפרית"
  , name_french: "Acide sulfurique"
  , name_latvian: "Sērskābe"
  , e_number: "E513"
  , group: Acid
  , source: [Synthetic]
  , description: ""
  , kosher: KosherIncludingPassover
}

e514 :: ENumber
e514 = {
  name_english: "Sodium sulphates (Sodium sulphate, Sodium hydrogen sulphate), Glauber's salt"
  , name_russian: "Сульфаты натрия (натрий сульфат, натрий гидрогенсульфат)"
  , name_german: "Natriumsulfate (Natriumsulfat, Natriumhydrogensulfat)"
  , name_hebrew: "סודיום סולפטים (סודיום סולפט, סודיום הידרוגן סולפט)"
  , name_french: "Sulfates de sodium (Sulfate de sodium, Hydrogénosulfate de sodium)"
  , name_latvian: "Nātrija sulfāti (Nātrija sulfāts, Nātrija hidrogēnsulfāts)"
  , e_number: "E514"
  , group: Acid
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e515 :: ENumber
e515 = {
  name_english: "Potassium sulphates (Potassium sulphate, Potassium hydrogen sulphate)"
  , name_russian: "Сульфаты калия (калий сульфат, калий гидрогенсульфат)"
  , name_german: "Kaliumsulfate (Kaliumsulfat, Kaliumhydrogensulfat)"
  , name_hebrew: "פוטסיום סולפטים (פוטסיום סולפט, פוטסיום הידרוגן סולפט)"
  , name_french: "Sulfates de potassium (Sulfate de potassium, Hydrogénosulfate de potassium)"
  , name_latvian: "Kālija sulfāti (Kālija sulfāts, Kālija hidrogēnsulfāts)"
  , e_number: "E515"
  , group: None
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e516 :: ENumber
e516 = {
  name_english: "Calcium sulphate (Gypsum; Plaster of Paris)"
  , name_russian: "Сульфат кальция"
  , name_german: "Calciumsulfat (Gips)"
  , name_hebrew: "סולפט סידן"
  , name_french: "Sulfate de calcium"
  , name_latvian: "Kalcija sulfāts"
  , e_number: "E516"
  , group: None
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e517 :: ENumber
e517 = {
  name_english: "Ammonium sulphate"
  , name_russian: "Сульфат аммония"
  , name_german: "Ammoniumsulfat"
  , name_hebrew: "סולפט אמוניום"
  , name_french: "Sulfate d'ammonium"
  , name_latvian: "Amonija sulfāts"
  , e_number: "E517"
  , group: AcidityRegulator
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e518 :: ENumber
e518 = {
  name_english: "Magnesium sulfate (Epsom salts)"
  , name_russian: "Сульфат магния"
  , name_german: "Magnesiumsulfat"
  , name_hebrew: "סולפט מגנזיום"
  , name_french: "Sulfate de magnésium"
  , name_latvian: "Magnija sulfāts"
  , e_number: "E518"
  , group: AcidityRegulator
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e519 :: ENumber
e519 = {
  name_english: "Copper(II) sulfate"
  , name_russian: "Сульфат меди(II)"
  , name_german: "Kupfer(II)-sulfat"
  , name_hebrew: "סולפט נחושת(II)"
  , name_french: "Sulfate de cuivre(II)"
  , name_latvian: "Varš(II) sulfāts"
  , e_number: "E519"
  , group: Preservative
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e520 :: ENumber
e520 = {
  name_english: "Aluminium sulphate"
  , name_russian: "Сульфат алюминия"
  , name_german: "Aluminiumsulfat"
  , name_hebrew: "סולפט אלומיניום"
  , name_french: "Sulfate d'aluminium"
  , name_latvian: "Alumīnija sulfāts"
  , e_number: "E520"
   -- TODO: check and add the group "firming agent" https://en.wikipedia.org/wiki/Firming_agent
  , group: None
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e521 :: ENumber
e521 = {
  name_english: "Aluminium sodium sulfate"
  , name_russian: "Сульфат алюминия натрия"
  , name_german: "Natriumaluminiumsulfat"
  , name_hebrew: "סולפט אלומיניום נתרן"
  , name_french: "Sulfate d'aluminium et de sodium"
  , name_latvian: "Alumīnija nātrija sulfāts"
  , e_number: "E521"
   -- TODO: check and add the group "firming agent" https://en.wikipedia.org/wiki/Firming_agent
  , group: None
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e522 :: ENumber
e522 = {
  name_english: "Aluminium potassium sulfate"
  , name_russian: "Сульфат алюминия калия"
  , name_german: "Kaliumaluminiumsulfat"
  , name_hebrew: "סולפט אלומיניום פוטסיום"
  , name_french: "Sulfate d'aluminium et de potassium"
  , name_latvian: "Alumīnija kālija sulfāts"
  , e_number: "E522"
  , group: AcidityRegulator
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e523 :: ENumber
e523 = {
  name_english: "Aluminium ammonium sulfate"
  , name_russian: "Сульфат алюминия аммония"
  , name_german: "Ammoniumaluminiumsulfat"
  , name_hebrew: "סולפט אלומיניום אמוניום"
  , name_french: "Sulfate d'aluminium et d'ammonium"
  , name_latvian: "Alumīnija amonija sulfāts"
  , e_number: "E523"
  , group: AcidityRegulator
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e524 :: ENumber
e524 = {
  name_english: "Sodium hydroxide (Caustic soda; Lye)"
, name_russian: "Гидроксид натрия"
, name_german: "Natriumhydroxid"
, name_hebrew: "הידרוקסיד נתרן"
, name_french: "Hydroxyde de sodium"
, name_latvian: "Nātrija hidroksīds"
, e_number: "E524"
, group: AcidityRegulator
, source: []
, description: ""
, kosher: KosherIncludingPassover
}

e525 :: ENumber
e525 = {
  name_english: "Potassium hydroxide"
  , name_russian: "Гидроксид калия"
  , name_german: "Kaliumhydroxid, Aetzkali, Kalilauge"
  , name_hebrew: "הידרוקסיד פוטסיום"
  , name_french: "Hydroxyde de potassium"
  , name_latvian: "Kālija hidroksīds"
  , e_number: "E525"
  , group: AcidityRegulator
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e526 :: ENumber
e526 = {
  name_english: "Calcium hydroxide (Slaked lime)"
  , name_russian: "Гидроксид кальция"
  , name_german: "Calciumhydroxid, Kalkhydrat, gelöschter Kalk, Kalkmilch"
  , name_hebrew: "הידרוקסיד סידן"
  , name_french: "Hydroxyde de calcium"
  , name_latvian: "Kalcija hidroksīds"
  , e_number: "E526"
  , group: AcidityRegulator
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e527 :: ENumber
e527 = {
  name_english: "Ammonium hydroxide"
  , name_russian: "Гидроксид аммония"
  , name_german: "Ammoniumhydroxid"
  , name_hebrew: "הידרוקסיד אמוניום"
  , name_french: "Hydroxyde d'ammonium"
  , name_latvian: "Amonija hidroksīds"
  , e_number: "E527"
  , group: AcidityRegulator
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e528 :: ENumber
e528 = {
  name_english: "Magnesium hydroxide"
  , name_russian: "Гидроксид магния"
  , name_german: "Magnesiumhydroxid"
  , name_hebrew: "הידרוקסיד מגנזיום"
  , name_french: "Hydroxyde de magnésium"
  , name_latvian: "Magnija hidroksīds"
  , e_number: "E528"
  , group: AcidityRegulator
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e529 :: ENumber
e529 = {
  name_english: "Calcium oxide (Quicklime)"
  , name_russian: "Оксид кальция"
  , name_german: "Calciumoxid, Branntkalk"
  , name_hebrew: "אוקסיד סידן"
  , name_french: "Oxyde de calcium"
  , name_latvian: "Kalcija oksīds"
  , e_number: "E529"
  , group: AcidityRegulator
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}


e530 :: ENumber
e530 = {
  name_english: "Magnesium oxide (Periclase; Native magnesium)"
  , name_russian: "Оксид магния"
  , name_german: "Magnesiumoxid"
  , name_hebrew: "אוקסיד מגנזיום"
  , name_french: "Oxyde de magnésium"
  , name_latvian: "Magnija oksīds"
  , e_number: "E530"
  , group: AntiCakingAgent
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e535 :: ENumber
e535 = {
  name_english: "Sodium ferrocyanide"
  , name_russian: "Ферроцианид натрия"
  , name_german: "Natriumhexacyanoferrat(II)"
  , name_hebrew: "פרוציאניד נתרן"
  , name_french: "Ferrocyanure de sodium"
  , name_latvian: "Nātrija ferociānīds"
  , e_number: "E535"
  , group: AntiCakingAgent
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e536 :: ENumber
e536 = {
  name_english: "Potassium ferrocyanide"
  , name_russian: "Ферроцианид калия"
  , name_german: "Kaliumhexacyanoferrat(II)"
  , name_hebrew: "פרוציאניד פוטסיום"
  , name_french: "Ferrocyanure de potassium"
  , name_latvian: "Kālija ferociānīds"
  , e_number: "E536"
  , group: AntiCakingAgent
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e537 :: ENumber
e537 = {
  name_english: "Ferrous hexacyanomanganate"
  , name_russian: "Гексацианоманганат железа"
  , name_german: "Eisen(II)-hexacyanomanganat(II)"
  , name_hebrew: "הקסציאנומנגנט פרוס"
  , name_french: "Hexacyanomanganate ferreux"
  , name_latvian: "Dzelzs heksacianomanganāts"
  , e_number: "E537"
  , group: AntiCakingAgent
  , source: []
  , description: ""
  , kosher: KosherForbidden
}

e538 :: ENumber
e538 = {
  name_english: "Calcium ferrocyanide"
  , name_russian: "Ферроцианид кальция"
  , name_german: "Calciumhexacyanoferrat(II)"
  , name_hebrew: "פרוציאניד סידן"
  , name_french: "Ferrocyanure de calcium"
  , name_latvian: "Kalcija ferociānīds"
  , e_number: "E538"
  , group: AntiCakingAgent
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e539 :: ENumber
e539 = {
  name_english: "Sodium thiosulfate"
  , name_russian: "Тиосульфат натрия"
  , name_german: "Natriumthiosulfat"
  , name_hebrew: "תיאוסולפט נתרן"
  , name_french: "Thiosulfate de sodium"
  , name_latvian: "Nātrija tiosulfāts"
  , e_number: "E539"
  , group: Antioxidant
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e540 :: ENumber
e540 = {
  name_english: "Dicalcium diphosphate"
  , name_russian: "Дикальций дифосфат"
  , name_german: "Dicalciumdiphosphat"
  , name_hebrew: "דיקלציום דיפוספט"
  , name_french: "Diphosphate dicalcique"
  , name_latvian: "Dikalcija difosfāts"
  , e_number: "E540"
  , group: Emulsifier
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e541 :: ENumber
e541 = {
  name_english: "Sodium aluminium phosphate(Acidic; Basic)"
  , name_russian: "Фосфат алюминия натрия"
  , name_german: "Natriumaluminiumphosphat"
  , name_hebrew: "פוספט אלומיניום נתרן"
  , name_french: "Phosphate d'aluminium et de sodium"
  , name_latvian: "Nātrija alumīnija fosfāts"
  , e_number: "E541"
  , group: Emulsifier
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e542 :: ENumber
e542 = {
  name_english: "Bone phosphate"
  , name_russian: "Фосфат костей"
  , name_german: "Knochenphosphat"
  , name_hebrew: "פוספט עצם"
  , name_french: "Phosphate d'os"
  , name_latvian: "Kaulu fosfāts"
  , e_number: "E542"
  , group: AntiCakingAgent
  , source: [Animal]
  , description: ""
  , kosher: NotKosher
}

e543 :: ENumber
e543 = {
  name_english: "Calcium sodium polyphosphate"
  , name_russian: "Полифосфат кальция натрия"
  , name_german: "Calciumnatriumpolyphosphat"
  , name_hebrew: "פוליפוספט סידן נתרן"
  , name_french: "Polyphosphate de calcium et de sodium"
  , name_latvian: "Kalcija nātrija polifosfāts"
  , e_number: "E543"
  , group: Emulsifier
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e544 :: ENumber
e544 = {
  name_english: "Calcium polyphosphate"
  , name_russian: "Полифосфат кальция"
  , name_german: "Calciumpolyphosphat"
  , name_hebrew: "פוליפוספט סידן"
  , name_french: "Polyphosphate de calcium"
  , name_latvian: "Kalcija polifosfāts"
  , e_number: "E544"
  , group: Emulsifier
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e545 :: ENumber
e545 = {
  name_english: "Ammonium polyphosphate"
  , name_russian: "Полифосфат аммония"
  , name_german: "Ammoniumpolyphosphat"
  , name_hebrew: "פוליפוספט אמוניום"
  , name_french: "Polyphosphate d'ammonium"
  , name_latvian: "Amonija polifosfāts"
  , e_number: "E545"
  , group: Emulsifier
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e550 :: ENumber
e550 = {
  name_english: "Sodium silicates ( Sodium silicate, Sodium metasilicate)"
  , name_russian: "Кремнекислые натрии (натрий кремнекислый, натрий метасиликат)"
  , name_german: "Natriumsilikate (Natriumsilikat, Natriummetasilikat)"
  , name_hebrew: "סיליקטים נתריים (סיליקט נתרן, מטסיליקט נתרן)"
  , name_french: "Silicates de sodium (Silicate de sodium, Métasilicate de sodium)"
  , name_latvian: "Nātrija silikāti (Nātrija silikāts, Nātrija metasilikāts)"
  , e_number: "E550"
  , group: AntiCakingAgent
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e551 :: ENumber
e551 = {
  name_english: "Silicon dioxide (Silica)"
  , name_russian: "Диоксид кремния"
  , name_german: "Siliciumdioxid"
  , name_hebrew: "דו-חמצני סיליקון"
  , name_french: "Dioxyde de silicium"
  , name_latvian: "Silīcija dioksīds"
  , e_number: "E551"
  , group: AntiCakingAgent
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e552 :: ENumber
e552 = {
  name_english: "Calcium silicate"
  , name_russian: "Силикат кальция"
  , name_german: "Calciumsilicat"
  , name_hebrew: "סיליקט סידן"
  , name_french: "Silicate de calcium"
  , name_latvian: "Kalcija silikāts"
  , e_number: "E552"
  , group: AntiCakingAgent
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e553a :: ENumber
e553a = {
  name_english: "Magnesium silicate, Magnesium trisilicate"
  , name_russian: "Силикат магния, Трисиликат магния"
  , name_german: "Magnesiumsilicat, Magnesiumtrisilicat"
  , name_hebrew: "סיליקט מגנזיום, טריסיליקט מגנזיום"
  , name_french: "Silicate de magnésium, Trisilicate de magnésium"
  , name_latvian: "Magnija silikāts, Magnija trisilikāts"
  , e_number: "E553a"
  , group: AntiCakingAgent
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e553b :: ENumber
e553b = {
  name_english: "Talc"
  , name_russian: "Тальк"
  , name_german: "Talk"
  , name_hebrew: "טלק"
  , name_french: "Talc"
  , name_latvian: "Talcs"
  , e_number: "E553b"
  , group: AntiCakingAgent
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e554 :: ENumber
e554 = {
  name_english: "Sodium aluminium silicate"
  , name_russian: "Силикат алюминия натрия"
  , name_german: "Natriumaluminiumsilicat"
  , name_hebrew: "סיליקט אלומיניום נתרן"
  , name_french: "Silicate d'aluminium et de sodium"
  , name_latvian: "Nātrija alumīnija silikāts"
  , e_number: "E554"
  , group: AntiCakingAgent
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e555 :: ENumber
e555 = {
  name_english: "Potassium aluminium silicate"
  , name_russian: "Силикат алюминия калия"
  , name_german: "Kaliumaluminiumsilicat"
  , name_hebrew: "סיליקט אלומיניום פוטסיום"
  , name_french: "Silicate d'aluminium et de potassium"
  , name_latvian: "Kālija alumīnija silikāts"
  , e_number: "E555"
  , group: AntiCakingAgent
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e556 :: ENumber
e556 = {
  name_english: "Calcium aluminosilicate (calcium aluminium silicate)"
  , name_russian: "Алюмосиликат кальция"
  , name_german: "Calciumaluminosilicat"
  , name_hebrew: "אלומינוסיליקט סידן"
  , name_french: "Aluminosilicate de calcium"
  , name_latvian: "Kalcija alumīnija silikāts"
  , e_number: "E556"
  , group: AntiCakingAgent
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e557 :: ENumber
e557 = {
  name_english: "Zinc silicate"
  , name_russian: "Силикат цинка"
  , name_german: "Zinksilicat"
  , name_hebrew: "סיליקט אבץ"
  , name_french: "Silicate de zinc"
  , name_latvian: "Cinka silikāts"
  , e_number: "E557"
  , group: AntiCakingAgent
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e558 :: ENumber
e558 = {
  name_english: "Bentonite"
  , name_russian: "Бентонит"
  , name_german: "Bentonit"
  , name_hebrew: "בנטוניט"
  , name_french: "Bentonite"
  , name_latvian: "Bentonīts"
  , e_number: "E558"
  , group: AntiCakingAgent
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e559 :: ENumber
e559 = {
  name_english: "Aluminium silicate (Kaolin)"
  , name_russian: "Силикат алюминия (Каолин)"
  , name_german: "Aluminiumsilicat (Kaolin)"
  , name_hebrew: "סיליקט אלומיניום (קאולין)"
  , name_french: "Silicate d'aluminium (Kaolin)"
  , name_latvian: "Alumīnija silikāts (Kaolīns)"
  , e_number: "E559"
  , group: AntiCakingAgent
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e560 :: ENumber
e560 = {
  name_english: "Potassium silicate"
  , name_russian: "Силикат калия"
  , name_german: "Kaliumsilicat"
  , name_hebrew: "סיליקט פוטסיום"
  , name_french: "Silicate de potassium"
  , name_latvian: "Kālija silikāts"
  , e_number: "E560"
  , group: AntiCakingAgent
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e561 :: ENumber
e561 = {
  name_english: "Vermiculite"
  , name_russian: "Вермикулит"
  , name_german: "Vermiculit"
  , name_hebrew: "ורמיקוליט"
  , name_french: "Vermiculite"
  , name_latvian: "Vermikulīts"
  , e_number: "E561"
  , group: None
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover 
}

e562 :: ENumber
e562 = {
  name_english: "Sepiolite"
  , name_russian: "Сепиолит"
  , name_german: "Sepiolith"
  , name_hebrew: "ספיוליט"
  , name_french: "Sépiolite"
  , name_latvian: "Sepiolīts"
  , e_number: "E562"
  , group: None
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e563 :: ENumber
e563 = {
  name_english: "Sepiolitic clay"
  , name_russian: "Сепиолитовая глина"
  , name_german: "Sepiolithton"
  , name_hebrew: "חימר ספיוליטי"
  , name_french: "Argile sépiolitique"
  , name_latvian: "Sepiolīta māla"
  , e_number: "E563"
  , group: None
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e565 :: ENumber
e565 = {
  name_english: "Lignosulfonates"
  , name_russian: "Лигносульфонаты"
  , name_german: "Ligninsulfonate"
  , name_hebrew: "ליגנוסולפונטים"
  , name_french: "Lignosulfonates"
  , name_latvian: "Lignosulfonāti"
  , e_number: "E565"
  , group: None
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e566 :: ENumber
e566 = {
  name_english: "Natrolite-phonolite"
  , name_russian: "Натролит-фонолит"
  , name_german: "Natrolith-Phonolith"
  , name_hebrew: "נטרוליט-פונוליט"
  , name_french: "Natrolite-phonolite"
  , name_latvian: "Natrolīts-fonolīts"
  , e_number: "E566"
  , group: None
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e570 :: ENumber
e570 = {
  name_english: "Stearic acid"
  , name_russian: "Стеариновая кислота"
  , name_german: "Stearinsäure"
  , name_hebrew: "חומצה סטארית"
  , name_french: "Acide stéarique"
  , name_latvian: "Stearīnskābe"
  , e_number: "E570"
  , group: AntiCakingAgent
  , source: [Animal]
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e572 :: ENumber
e572 = {
  name_english: "Magnesium stearate, calcium stearate"
  , name_russian: "Стеарат магния, стеарат кальция"
  , name_german: "Magnesiumstearat, Calciumstearat"
  , name_hebrew: "סטארט מגנזיום, סטארט סידן"
  , name_french: "Stéarate de magnésium, stéarate de calcium"
  , name_latvian: "Magnija stearāts, kalcija stearāts"
  , e_number: "E572"
  , group: AntiCakingAgent
  , source: [Animal]
  , description: ""
  , kosher: MostlyNotKosher
}

e574 :: ENumber
e574 = {
  name_english: "Gluconic acid"
  , name_russian: "Глюконовая кислота"
  , name_german: "Gluconsäure"
  , name_hebrew: "חומצה גלוקונית"
  , name_french: "Acide gluconique"
  , name_latvian: "Gluconskābe"
  , e_number: "E574"
  , group: AcidityRegulator
  , source: []
  , description: ""
  , kosher: NeedHashgohoWholeYearSomeAllow
}

e575 :: ENumber
e575 = {
  name_english: "Glucono-delta-lactone"
  , name_russian: "Глюконо дельта-лактон"
  , name_german: "Glucono-delta-lacton"
  , name_hebrew: "גלוקונו-דלטה-לקטון"
  , name_french: "Glucono-delta-lactone"
  , name_latvian: "Glucono-delta-laktons"
  , e_number: "E575"
  , group: AcidityRegulator
  , source: [Kitniyot, Chametz]
  , description: ""
  , kosher: OftenKosherNeedHashgoho
}

e576 :: ENumber
e576 = {
  name_english: "Sodium gluconate"
  , name_russian: "Глюконат натрия"
  , name_german: "Natriumgluconat"
  , name_hebrew: "גלוקונט נתרן"
  , name_french: "Gluconate de sodium"
  , name_latvian: "Nātrija gluconāts"
  , e_number: "E576"
  -- TODO: check and add the group "sequestrant" https://en.wikipedia.org/wiki/Sequestrant 
  , group: None
  , source: [Kitniyot, Chametz]
  , description: ""
  , kosher: OftenKosherNeedHashgoho
}

e577 :: ENumber
e577 = {
  name_english: "Potassium gluconate"
  , name_russian: "Глюконат калия"
  , name_german: "Kaliumgluconat"
  , name_hebrew: "גלוקונט פוטסיום"
  , name_french: "Gluconate de potassium"
  , name_latvian: "Kālija gluconāts"
  , e_number: "E577"
  -- TODO: check and add the group "sequestrant" https://en.wikipedia.org/wiki/Sequestrant 
  , group: None
  , source: [Kitniyot, Chametz]
  , description: ""
  , kosher: OftenKosherNeedHashgoho
}

e578 :: ENumber
e578 = {
  name_english: "Calcium gluconate"
  , name_russian: "Глюконат кальция"
  , name_german: "Calciumgluconat"
  , name_hebrew: "גלוקונט סידן"
  , name_french: "Gluconate de calcium"
  , name_latvian: "Kalcija gluconāts"
  , e_number: "E578"
  -- TODO: add group firming agent https://en.wikipedia.org/wiki/Firming_agent
  , group: None
  , source: [Kitniyot, Chametz]
  , description: ""
  , kosher: OftenKosherNeedHashgoho
}

e579 :: ENumber
e579 = {
  name_english: "Ferrous gluconate"
  , name_russian: "Глюконат железа"
  , name_german: "Eisen(II)-gluconat"
  , name_hebrew: "גלוקונט ברזל"
  , name_french: "Gluconate de fer"
  , name_latvian: "Dzelzs gluconāts"
  , e_number: "E579"
  , group: Colour
  , source: [Synthetic]
  , description: ""
  , kosher: OftenKosherNeedHashgoho
}

e580 :: ENumber
e580 = {
  name_english: "Magnesium gluconate"
  , name_russian: "Глюконат магния"
  , name_german: "Magnesiumgluconat"
  , name_hebrew: "גלוקונט מגנזיום"
  , name_french: "Gluconate de magnésium"
  , name_latvian: "Magnija gluconāts"
  , e_number: "E580"
  , group: None
  , source: []
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e585 :: ENumber
e585 = {
  name_english: "Ferrous lactate"
  , name_russian: "Лактат железа"
  , name_german: "Eisen(II)-lactat"
  , name_hebrew: "לקטט ברזל"
  , name_french: "Lactate de fer"
  , name_latvian: "Dzelzs laktāts"
  , e_number: "E585"
  , group: Colour
  , source: [Synthetic]
  , description: ""
  , kosher: NeedHashgohoWholeYearSomeAllow
}

e586 :: ENumber
e586 = {
  name_english: "	4-Hexylresorcinol"
  , name_russian: "4-Гексилрезорцинол"
  , name_german: "4-Hexylresorcinol"
  , name_hebrew: "4-הקסילרזורצינול"
  , name_french: "4-Hexylrésorcinol"
  , name_latvian: "4-Heksilrezorcīns"
  , e_number: "E586"
  , group: Antioxidant
  , source: []
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e598 :: ENumber
e598 = {
  name_english: "Synthetic calcium aluminates"
  , name_russian: "Синтетические кальциевые алюминаты"
  , name_german: "Synthetische Calciumaluminate"
  , name_hebrew: "אלומינטים סינתטיים סידן"
  , name_french: "Aluminates de calcium synthétiques"
  , name_latvian: "Sintētiskie kalcija alumīnāti"
  , e_number: "E598"
  , group: None
  , source: []
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e599 :: ENumber
e599 = {
  name_english: "Perlite"
  , name_russian: "Перлит"
  , name_german: "Perlit"
  , name_hebrew: "פרליט"
  , name_french: "Perlite"
  , name_latvian: "Perlīts"
  , e_number: "E599"
  , group: None
  , source: []
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}



