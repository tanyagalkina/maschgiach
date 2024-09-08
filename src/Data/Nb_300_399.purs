-- Antioxidants and Acidity Regulators (300-399)

module Data.Nb300to399 (antioxidantENumberList) where

import Data.ENumberTypes (AdditiveGroup(..), ENumber, ENumberList, Kashrut(..), Source(..), emptyENumberList, insertEntry)

infixr 5 insertEntry as ++

antioxidantENumberList :: ENumberList
antioxidantENumberList =  e300 ++ e301 ++ e302 ++ e303 ++ e304 ++ e305 ++ e306 ++ e307 ++ e308 ++ e309 ++
  e310 ++ e311 ++ e312 ++ e313 ++ e314 ++ e315 ++ e316 ++ e317 ++ e318 ++ e319 ++
  e320 ++ e321 ++ e322 ++ e323 ++ e324 ++ e325 ++ e326 ++ e327 ++ e328 ++ e329 ++ 
  e330 ++ e331 ++ e332 ++ e333 ++ e334 ++ e335 ++ e336 ++ e337 ++
  e338 ++ e339 ++ e340 ++ e341 ++ e342 ++ e342a ++ e342b ++ e343 ++ e344 ++ e345 ++ e349 ++
  e350 ++ e351 ++ e352 ++ e353 ++ e354 ++ e355 ++ e356 ++ e357 ++ e359 ++
  e363 ++ e365 ++ e366 ++ e367 ++ e368 ++ 
  e370 ++ e375 ++ e380 ++ e381 ++ e383 ++ e384 ++ e385 ++ e386 ++ e387 ++ e388 ++ e389 ++
  e390 ++ e391 ++ e399 ++

   emptyENumberList

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
  name_english: "Sodium L-ascorbate"
  , name_russian: "Аскорбат натрия"
  , name_german: "Natriumascorbat"
  , name_hebrew: "אסקורבט נתרן"
  , name_french: "Ascorbate de sodium"
  , name_latvian: "Nātrija askorbāts"
  , e_number: "E301"
  , group: Antioxidant
  , source: [Synthetic]
  , description: "Vitamin C"
  , kosher: KosherNeedPassoverHashgoho  
}

e302 :: ENumber
e302 = {
  name_english: "Calcium L-ascorbate"
  , name_russian: "Аскорбат кальция"
  , name_german: "Calciumascorbat"
  , name_hebrew: "אסקורבט סידן"
  , name_french: "Ascorbate de calcium"
  , name_latvian: "Kalcija askorbāts"
  , e_number: "E302"
  , group: Antioxidant
  , source: [Synthetic]
  , description: "Vitamin C"
  , kosher: KosherNeedPassoverHashgoho  
}

e303 :: ENumber
e303 = {
  name_english: "Potassium L-ascorbate"
  , name_russian: "Аскорбат калия"
  , name_german: "Kaliumascorbat"
  , name_hebrew: "אסקורבט פוטסיום"
  , name_french: "Ascorbate de potassium"
  , name_latvian: "Kālija askorbāts"
  , e_number: "E303"
  , group: Antioxidant
  , source: []
  , description: ""
  , kosher: IssuficientData  
}

e304 :: ENumber
e304 = {
  name_english: "Fatty acid esters of ascorbic acid, Ascorbyl palmitate"
  , name_russian: "Acкopбилпальмитат"
  , name_german: "Ascorbyl palmitat"
  , name_hebrew: "אסקורביל פלמיטאט"
  , name_french: "Palmitate d'ascorbyl"
  , name_latvian: "Askorbīnskābes taukskābju esteri - askorbilpalmitāts, askorbilstearāts"
  , e_number: "E304"
  , group: Antioxidant
  , source: [Synthetic]
  , description: "A fat-soluble form of Vitamin C"
  , kosher: NeedHashgohoWholeYear
}

e305 :: ENumber
e305 = {
  name_english: "Ascorbyl stearate"
  , name_russian: "Аскорбилстеарат"
  , name_german: "Ascorbylstearat"
  , name_hebrew: "אסקורביל סטיארט"
  , name_french: "Stéarate d'ascorbyle"
  , name_latvian: "Askorbilstearāts"
  , e_number: "E305"
  , group: Antioxidant
  , source: []
  , description: "A fat-soluble form of Vitamin C"
  , kosher: NeedHashgohoWholeYear
}

e306 :: ENumber
e306 = {
  name_english: "Mixed tocopherols concentrate, Vitamin E"
  , name_russian: "Концентрат смеси токоферолов, витамин Е"
  , name_german: "Tocopherolkonzentrat"
  , name_hebrew: "קונצנטרט טוקופרולים מעורבים"
  , name_french: "Concentré de tocophérols"
  , name_latvian: "Tokoferolu koncentrāts"
  , e_number: "E306"
  , group: Antioxidant
  , source: [Wine, Eggs, Animal]
  , description: "Vitamin E"
  , kosher: NeedHashgohoWholeYear
}

e307 :: ENumber
e307 = {
  name_english: "Alpha-tocopherol"
  , name_russian: "Альфа-токоферол"
  , name_german: "Alpha-Tocopherol"
  , name_hebrew: "אלפא-טוקופרול"
  , name_french: "Alpha-tocophérol"
  , name_latvian: "Alfa-tokoferols"
  , e_number: "E307"
  , group: Antioxidant
  , source: [Synthetic]
  , description: "Vitamin E"
  , kosher: NeedHashgohoWholeYear
}

e308 :: ENumber
e308 = {
  name_english: "Gamma-tocopherol"
  , name_russian: "Гамма-токоферол"
  , name_german: "Gamma-Tocopherol"
  , name_hebrew: "גמא-טוקופרול"
  , name_french: "Gamma-tocophérol"
  , name_latvian: "Gammatokoferols"
  , e_number: "E308"
  , group: Antioxidant
  , source: [Synthetic]
  , description: "Vitamin E"
  , kosher: NeedHashgohoWholeYear
}

e309 :: ENumber
e309 = {
  name_english: "Delta-tocopherol"
  , name_russian: "Дельта-токоферол"
  , name_german: "Delta-Tocopherol"
  , name_hebrew: "דלתא-טוקופרול"
  , name_french: "Delta-tocophérol"
  , name_latvian: "Delta-tokoferols"
  , e_number: "E309"
  , group: Antioxidant
  , source: [Synthetic]
  , description: "Vitamin E"
  , kosher: NeedHashgohoWholeYear
}

e310 :: ENumber
e310 = {
  name_english: "Propyl gallate"
  , name_russian: "Пропилгаллат"
  , name_german: "Propylgallat"
  , name_hebrew: "פרופיל גלט"
  , name_french: "Propylgallate"
  , name_latvian: "Propilgallāts"
  , e_number: "E310"
  , group: Antioxidant
  , source: [Synthetic, Dangerous]
  , description: "A synthetic antioxidant"
  , kosher: NeedHashgohoWholeYear
}

e311 :: ENumber
e311 = {
  name_english: "Octyl gallate"
  , name_russian: "Октилгаллат"
  , name_german: "Octylgallat"
  , name_hebrew: "אוקטיל גלט"
  , name_french: "Octylgallate"
  , name_latvian: "Oktilgallāts"
  , e_number: "E311"
  , group: Antioxidant
  , source: [Synthetic, Dangerous]
  , description: "A synthetic antioxidant"
  , kosher: NeedHashgohoWholeYear
}

e312 :: ENumber
e312 = {
  name_english: "Dodecyl gallate"
  , name_russian: "Додецилгаллат"
  , name_german: "Dodecylgallat"
  , name_hebrew: "דודציל גלט"
  , name_french: "Dodecylgallate"
  , name_latvian: "Dodecilgallāts"
  , e_number: "E312"
  , group: Antioxidant
  , source: [Synthetic, Dangerous]
  , description: "A synthetic antioxidant"
  , kosher: NeedHashgohoWholeYear
}

e313 :: ENumber
e313 = {
  name_english: "Ethyl gallate"
  , name_russian: "Этилгаллат"
  , name_german: "Ethylgallat"
  , name_hebrew: "אתיל גלט"
  , name_french: "Éthylgallate"
  , name_latvian: "Etilgallāts"
  , e_number: "E313"
  , group: Antioxidant
  , source: [Synthetic, Dangerous]
  , description: "A synthetic antioxidant"
  , kosher: NeedHashgohoWholeYear
}

e314 :: ENumber
e314 = {
  name_english: "Guaiac resin"
  , name_russian: "Гуаяковая смола"
  , name_german: "Guajakharz"
  , name_hebrew: "גואיאק רזין"
  , name_french: "Résine de guaïac"
  , name_latvian: "Gvajaka sveķi"
  , e_number: "E314"
  , group: Antioxidant
  , source: []
  , description: ""
  , kosher: IssuficientData
}

e315 :: ENumber
e315 = {
  name_english : "Isoascorbic acid, Erythorbic acid"
  , name_russian : "Изо-аскорбиновая (эриторбовая) кислота"
  , name_german : "Isoascorbinsäure"
  , name_hebrew : "חומצה איזו-אסקורבית"
  , name_french : "Acide isoascorbique"
  , name_latvian : "Eritorbīnskābe"
  , e_number : "E315"
  , group : Antioxidant
  , source : [Synthetic, Chametz]
  , description : "A synthetic antioxidant"
  , kosher : UsuallyKosherRarelyNeedsHashgoho
}

e316 :: ENumber
e316 = {
  name_english : "Sodium erythorbate, Sodium isoascorbate"
  , name_russian : "Изо-аскорбат натрия"
  , name_german : "Natriumerythorbat"
  , name_hebrew : "אריתורבט נתרן"
  , name_french : "Érythorbate de sodium"
  , name_latvian : "Nātrija eritorbāts"
  , e_number : "E316"
  , group : Antioxidant
  , source : [Synthetic, Chametz]
  , description : "A synthetic antioxidant"
  , kosher : NeedHashgohoWholeYearSomeAllow
}

e317 :: ENumber
e317 = {
  name_english : "Erythorbic acid"
  , name_russian : "Эриторбовая кислота"
  , name_german : "Erythorbinsäure"
  , name_hebrew : "חומצה אריתורבית"
  , name_french : "Acide érythorbique"
  , name_latvian : "Eritorbīnskābe"
  , e_number : "E317"
  , group : Antioxidant
  , source : []
  , description : ""
  , kosher : NeedHashgohoWholeYear
}

e318 :: ENumber
e318 = {
  name_english : "Sodium arythrobin"
  , name_russian : "Аритробин натрия"
  , name_german : "Natriumarythrobin"
  , name_hebrew : "אריתרובין נתרן"
  , name_french : "Arythrobine de sodium"
  , name_latvian : "Nātrija aritrobīns"
  , e_number : "E318"
  , group : Antioxidant
  , source : []
  , description : ""
  , kosher : NeedHashgohoWholeYear
}

e319 :: ENumber
e319 =  {
  name_english: "Tertiary-butylhydroquinone, TBHQ"
  , name_russian: "Терциар-бутилгидрохинон"
  , name_german: "Tertiäres-Butylhydrochinon (TBHQ)"
  , name_hebrew: "טרציארי-בוטילהידרוקוינון"
  , name_french: "Tert-butylhydroquinone"
  , name_latvian: "Butilhidrohinons (TBHQ)"
  , e_number: "E319"
  , group: Antioxidant
  , source: [Synthetic]
  , description: "A synthetic antioxidant"
  , kosher: KosherNeedPassoverHashgoho
}

e320 :: ENumber
e320 = {
  name_english: "Butylated hydroxyanisole, BHA"
  , name_russian: "Бутилгидроксианизол"
  , name_german: "Butyliertes Hydroxyanisol (BHA)"
  , name_hebrew: "בוטילטד הידרוקסיאניזול"
  , name_french: "Hydroxyanisole butylé (BHA)"
  , name_latvian: "Butilēts hidroksianizols (BHA)"
  , e_number: "E320"
  , group: Antioxidant
  , source: [Synthetic, Kitniyot]
  , description: "A synthetic antioxidant"
  , kosher: KosherNeedPassoverHashgoho
}

e321 :: ENumber
e321 = {
  name_english: "Butylated hydroxytoluene, BHT"
  , name_russian: "Бутилгидрокситолуол"
  , name_german: "Butyliertes Hydroxytoluol (BHT)"
  , name_hebrew: "בוטילטד הידרוקסיטולואול"
  , name_french: "Hydroxytoluène butylé (BHT)"
  , name_latvian: "Butilēts hidroksitoluols (BHT)"
  , e_number: "E321"
  , group: Antioxidant
  , source: [Synthetic, Kitniyot]
  , description: "A synthetic antioxidant"
  , kosher: KosherNeedPassoverHashgoho
}

e322 :: ENumber
e322 = {
  name_english: "Lecithins"
  , name_russian: "Лецитины"
  , name_german: "Lecithine"
  , name_hebrew: "לציטינים"
  , name_french: "Lécithines"
  , name_latvian: "Lecitīni"
  , e_number: "E322"
  , group: Emulsifier
  , source: [Kitniyot, Eggs, Vegan]
  , description: "A natural antioxidant"
  , kosher: UsuallyKosherRarelyNeedsHashgoho
}


e323 :: ENumber
e323 = {
  name_english: "Anoxomer"
  , name_russian: "Аноксомер"
  , name_german: "Anoxomer"
  , name_hebrew: "אנוקסומר"
  , name_french: "Anoxomer"
  , name_latvian: "Anoksomers"
  , e_number: "E323"
  , group: Antioxidant
  , source: [Synthetic]
  , description: "A synthetic antioxidant"
  , kosher: KosherIncludingPassover
}

e324 :: ENumber
e324 = {
  name_english: "Ethoxyquin"
  , name_russian: "Этоксиквин"
  , name_german: "Ethoxyquin"
  , name_hebrew: "אתוקסיקווין"
  , name_french: "Ethoxyquine"
  , name_latvian: "Etoksikvīns"
  , e_number: "E324"
  , group: Antioxidant
  , source: [Synthetic]
  , description: "A synthetic antioxidant"
  , kosher: KosherNeedPassoverHashgoho
}

e325 :: ENumber
e325 = {
  name_english: "Sodium lactate"
  , name_russian: "Лактат натрия"
  , name_german: "Natriumlactat"
  , name_hebrew: "לקטט נתרן"
  , name_french: "Lactate de sodium"
  , name_latvian: "Nātrija laktāts"
  , e_number: "E325"
  , group: AcidityRegulator
  , source: [Dairy]
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e326 :: ENumber
e326 = {
  name_english: "Potassium lactate"
  , name_russian: "Лактат калия"
  , name_german: "Kaliumlactat"
  , name_hebrew: "לקטט פוטסיום"
  , name_french: "Lactate de potassium"
  , name_latvian: "Kālija laktāts"
  , e_number: "E326"
  , group: AcidityRegulator
  , source: [Dairy]
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e327 :: ENumber
e327 = {
  name_english: "Calcium lactate"
  , name_russian: "Лактат кальция"
  , name_german: "Calciumlactat"
  , name_hebrew: "לקטט סידן"
  , name_french: "Lactate de calcium"
  , name_latvian: "Kalcija laktāts"
  , e_number: "E327"
  , group: AcidityRegulator
  , source: [Dairy]
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e328 :: ENumber
e328 = {
  name_english: "Ammonium lactate"
  , name_russian: "Лактат аммония"
  , name_german: "Ammoniumlactat"
  , name_hebrew: "לקטט אמוניום"
  , name_french: "Lactate d'ammonium"
  , name_latvian: "Amonija laktāts"
  , e_number: "E328"
  , group: AcidityRegulator
  , source: [Dairy]
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e329 :: ENumber
e329 = {
  name_english: "Magnesium lactate"
  , name_russian: "Лактат магния"
  , name_german: "Magnesiumlactat"
  , name_hebrew: "לקטט מגנזיום"
  , name_french: "Lactate de magnésium"
  , name_latvian: "Magnija laktāts"
  , e_number: "E329"
  , group: AcidityRegulator
  , source: [Dairy]
  , description: ""
  , kosher: NeedHashgohoWholeYear
}


e330 :: ENumber
e330 = {
  name_english: "Citric acid"
  , name_russian: "Лимонная кислота"
  , name_german: "Zitronensäure"
  , name_hebrew: "חומצה לימונית"
  , name_french: "Acide citrique"
  , name_latvian: "Citronskābe"
  , e_number: "E330"
  , group: AcidityRegulator
  , source: [Chametz]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e331 :: ENumber 
e331 = {
  name_english: "Sodium citrates (Monosodium cirate, Disodium citrate, Trisodium citrate)"
  , name_russian: "Цитраты натрия"
  , name_german: "Natriumcitrate"
  , name_hebrew: "ציטרטים נתריים"
  , name_french: "Citrate de sodium"
  , name_latvian: "Nātrija citrāti - mononātrija citrāts, dinātrija citrāts, trinātrija citrāts"
  , e_number: "E331"
  , group: AcidityRegulator
  , source: [Chametz, Synthetic]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e332 :: ENumber
e332 = {
  name_english: "Potassium citrates (Monopotassium citrate, Tripotassium citrate)"
  , name_russian: "Цитраты калия"
  , name_german: "Kaliumcitrate"
  , name_hebrew: "ציטרטים פוטסיומיים"
  , name_french: "Citrate de potassium"
  , name_latvian: "Kālija citrāti - monokalcija citrāts, dikalcija citrāts, trikalcija citrāts"
  , e_number: "E332"
  , group: AcidityRegulator
  , source: [Chametz, Synthetic]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e333 :: ENumber
e333 = {
  name_english: "Calcium citrates (Monocalcium citrate, Dicalcium citrate, Tricalcium citrate)"
  , name_russian: "Цитраты кальция"
  , name_german: "Calciumcitrate"
  , name_hebrew: "ציטרטים סידניים"
  , name_french: "Citrate de calcium"
  , name_latvian: "Kalcija citrāti"
  , e_number: "E333"
  , group: AcidityRegulator
  , source: [Chametz, Synthetic]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e334 :: ENumber
e334 = {
  name_english: "Tartaric acid"
  , name_russian: "Винная кислота"
  , name_german: "Weinsäure"
  , name_hebrew: "חומצה טרטרית"
  , name_french: "Acide tartrique"
  , name_latvian: "Vīnskābe (L(+)-)"
  , e_number: "E334"
  , group: Acid
  , source: [Wine]
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e335 :: ENumber
e335 = {
  name_english: "Sodium tartares (Monosodium tartrate, Disodium tartrate)"
  , name_russian: "Тартраты натрия"
  , name_german: "Natriumtartrate"
  , name_hebrew: "טרטרטים נתריים"
  , name_french: "Tartrate de sodium"
  , name_latvian: "Nātrija tartrāti - mononātrija tartrāts, dinātrija tartrāts"
  , e_number: "E335"
  , group: AcidityRegulator
  , source: [Wine, Synthetic]
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e336 :: ENumber
e336 = {
  name_english: "Potassium tartares (Monopotassium tartrate (cream of tartar), Dipotassium tartrate)"
  , name_russian: "Тартраты калия"
  , name_german: "Kaliumtartrate"
  , name_hebrew: "טרטרטים פוטסיומיים"
  , name_french: "Tartrate de potassium"
  , name_latvian: "Kālija tartrāti -  monokālija tartrāts, dikālija tartrāts"
  , e_number: "E336"
  , group: AcidityRegulator
  , source: [Wine]
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e337 :: ENumber
e337 = {
  name_english: "Sodium potassium tartrate"
  , name_russian: "Тартрат калия-натрия"
  , name_german: "Natriumkaliumtartrat"
  , name_hebrew: "טרטרט נתריום-פוטסיום"
  , name_french: "Tartrate de sodium-potassium"
  , name_latvian: "Kālija nātrija tartrāts"
  , e_number: "E337"
  , group: AcidityRegulator
  , source: [Wine, Synthetic]
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e338 :: ENumber
e338 = {
  name_english: "Orthophosphoric acid"
  , name_russian: "Ортофосфорная кислота"
  , name_german: "Orthophosphorsäure"
  , name_hebrew: "חומצה זרחתית פוספורית"
  , name_french: "Acide orthophosphorique"
  , name_latvian: "Fosforskābe"
  , e_number: "E338"
  , group: Acid
  , source: [Synthetic]
  , description: ""
  , kosher: KosherIncludingPassover
}

e339 :: ENumber
e339 = {
  name_english: "Sodium orthophosphates (Monosodium phosphate, Disodium phosphate, Trisodium phosphate)"
  , name_russian: "Ортофосфаты натрия"
  , name_german: "Natriumorthophosphate"
  , name_hebrew: "סודיום פוספאת"
  , name_french: "Orthophosphates de sodium"
  , name_latvian: "Nātrija fosfāti - mononātrija fosfāts, dinātrija fosfāts, trinātrija fosfāts"
  , e_number: "E339"
  , group: Antioxidant
  , source: [Synthetic]
  , description: ""
  , kosher: KosherIncludingPassover
}

e340 :: ENumber
e340 = {
  name_english: "Potassium phosphates (Monopotassium phosphate, Dipotassium phosphate, Tripotassium phosphate)"
  , name_russian: "Фосфаты калия"
  , name_german: "Kaliumphosphate"
  , name_hebrew: "פוטאסיום אורטו-פוספאת"
  , name_french: "Phosphates de potassium"
  , name_latvian: "Kālija fosfāti - monokālija fosfāts, dikālija fosfāts, trikālija fosfāts"
  , e_number: "E340"
  , group: Antioxidant
  , source: [Synthetic]
  , description: ""
  , kosher: KosherIncludingPassover
}

e341 :: ENumber
e341 = {
  name_english: "Calcium phosphates (Monocalcium phosphate, Dicalcium phosphate, Tricalcium phosphate)"
  , name_russian: "Фосфаты кальция"
  , name_german: "Calciumphosphate"
  , name_hebrew: "קאלציום אורטו-פוספאט"
  , name_french: "Phosphates de calcium"
  , name_latvian: "Kalcija fosfāti - monokālija fosfāts, dikālija fosfāts, trikālija fosfāts"
  , e_number: "E341"
  , group: AntiCakingAgent
  , source: [Synthetic]
  , description: ""
  , kosher: KosherIncludingPassover
}

e342 :: ENumber
e342 = {
  name_english: "Ammonium phosphates (Monammonium phosphate, Diammonium phosphate, Triammonium phosphate)"
  , name_russian: "Фосфаты аммония"
  , name_german: "Ammoniumphosphate"
  , name_hebrew: "אמוניום אורטו-פוספאט"
  , name_french: "Phosphates d'ammonium"
  , name_latvian: "Amonija fosfāti"
  , e_number: "E342"
  , group: None
  , source: [Synthetic]
  , description: ""
  , kosher: KosherIncludingPassover
}

e342a :: ENumber
e342a = {
  name_english: "Monoammonium"
  , name_russian: "Фосфаты аммония"
  , name_german: "Ammoniumphosphate"
  , name_hebrew: "אמוניום אורטו-פוספאט"
  , name_french: "Phosphates d'ammonium"
  , name_latvian: "Amonija fosfāti"
  , e_number: "E342a"
  , group: None
  , source: [Synthetic]
  , description: ""
  , kosher: KosherIncludingPassover
}

e342b :: ENumber
e342b = {
  name_english: "Diammonium"
  , name_russian: "Фосфаты аммония"
  , name_german: "Ammoniumphosphate"
  , name_hebrew: "אמוניום אורטו-פוספאט"
  , name_french: "Phosphates d'ammonium"
  , name_latvian: "Amonija fosfāti"
  , e_number: "E342b"
  , group: None
  , source: [Synthetic]
  , description: ""
  , kosher: KosherIncludingPassover
}

e343 :: ENumber
e343 = {
  name_english: "Magnesium phosphates(Monomagnesium phosphate, Dimagnesium phosphate)"
  , name_russian: "Фосфаты магния"
  , name_german: "Magnesiumphosphate"
  , name_hebrew: "מגנזיום אורטו-פוספאט"
  , name_french: "Phosphates de magnésium"
  , name_latvian: "Magnija fosfāti - monomgnija fosfāts, dimagnija fosfāts"
  , e_number: "E343"
  , group: AntiCakingAgent
  , source: [Synthetic]
  , description: ""
  , kosher: KosherIncludingPassover
}

e344 :: ENumber
e344 = {
  name_english: "Lecithin citrate"
  , name_russian: "Цитрат лецитина"
  , name_german: "Lecithincitrat"
  , name_hebrew: "לציטין ציטרט"
  , name_french: "Citrate de lécithine"
  , name_latvian: "Lecitīna citrāts"
  , e_number: "E344"
  , group: AcidityRegulator
  , source: [Synthetic]
  , description: "NOT approved in the UK"
  , kosher: KosherIncludingPassover
}

e345 :: ENumber
e345 = {
  name_english: "Magnesium citrate"
  , name_russian: "Цитрат магния"
  , name_german: "Magnesiumcitrat"
  , name_hebrew: "מגנזיום ציטרט"
  , name_french: "Citrate de magnésium"
  , name_latvian: "Magnija citrāts"
  , e_number: "E345"
  , group: AcidityRegulator
  , source: [Synthetic]
  , description: ""
  , kosher: IssuficientData
}

e349 :: ENumber
e349 = {
  name_english: "Ammonium malate"
  , name_russian: "Малат аммония"
  , name_german: "Ammoniummalat"
  , name_hebrew: "מלט אמוניום"
  , name_french: "Malate d'ammonium"
  , name_latvian: "Amonija malāts"
  , e_number: "E349"
  , group: AcidityRegulator
  , source: [Synthetic]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}


e350 :: ENumber
e350 = {
  name_english: "Sodium malate, Sodium hydrogen malate"
  , name_russian: "Малат натрия"
  , name_german: "Natriummalat"
  , name_hebrew: "סודיום מאלאט"
  , name_french: "Malate de sodium"
  , name_latvian: "Nātrija malāti - nātrija malāts, nātrija hidrogēnmalāts"
  , e_number: "E350"
  , group: AcidityRegulator
  , source: [Synthetic]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e351 :: ENumber
e351 = {
  name_english: "Potassium malate"
  , name_russian: "Малат калия"
  , name_german: "Kaliummalat"
  , name_hebrew: "פוטאסיום מאלאט"
  , name_french: "Malate de potassium"
  , name_latvian: "Kālija malāts"
  , e_number: "E351"
  , group: AcidityRegulator
  , source: [Synthetic]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}


e352 :: ENumber
e352 = {
  name_english: "Calcium malate"
  , name_russian: "Малат кальция"
  , name_german: "Calciummalat"
  , name_hebrew: "קלציום מאלאט"
  , name_french: "Malate de calcium"
  , name_latvian: "Kalcija malāti - kalcija malāts, kalcija hidrogēnmalāts"
  , e_number: "E352"
  , group: AcidityRegulator
  , source: [Synthetic]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e353 :: ENumber
e353 = {
  name_english: "Metatartaric acid"
  , name_russian: "Мета-винная кислота"
  , name_german: "Metaweinsäure"
  , name_hebrew: "חומצה מטאטרטרית"
  , name_french: "Acide métatartrique"
  , name_latvian: "Mezovīnskābe"
  , e_number: "E353"
  , group: Emulsifier
  , source: [Synthetic]
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e354 :: ENumber
e354 = {
  name_english: "Calcium tartrate"
  , name_russian: "Тартрат кальция"
  , name_german: "Calciumtartrat"
  , name_hebrew: "טרטרט סידן"
  , name_french: "Tartrate de calcium"
  , name_latvian: "Kalcija tartrāts"
  , e_number: "E354"
  , group: Emulsifier
  , source: [Synthetic]
  , description: ""
  , kosher: NeedHashgohoWholeYear
}


e355 :: ENumber
e355 = {
  name_english: "Adipic acid"
  , name_russian: "Адипиновая кислота"
  , name_german: "Adipinsäure"
  , name_hebrew: "חומצה אדיפית"
  , name_french: "Acide adipique"
  , name_latvian: "Adipīnskābe"
  , e_number: "E355"
  , group: Acid
  , source: [Synthetic]
  , description: ""
  , kosher: KosherIncludingPassover
}

e356 :: ENumber
e356 = {
  name_english: "Sodium adipate"
  , name_russian: "Адипат натрия"
  , name_german: "Natriumadipat"
  , name_hebrew: "אדיפט נתרן"
  , name_french: "Adipate de sodium"
  , name_latvian: "Nātrija adipināts"
  , e_number: "E356"
  , group: AcidityRegulator
  , source: [Synthetic]
  , description: ""
  , kosher: KosherIncludingPassover
}

e357 :: ENumber
e357 = {
  name_english: "Potassium adipate"
  , name_russian: "Адипат калия"
  , name_german: "Kaliumadipat"
  , name_hebrew: "אדיפט פוטסיום"
  , name_french: "Adipate de potassium"
  , name_latvian: "Kālija adipināts"
  , e_number: "E357"
  , group: AcidityRegulator
  , source: [Synthetic]
  , description: ""
  , kosher: KosherIncludingPassover
}


e359 :: ENumber
e359 = {
  name_english: "Ammonium adipate"
  , name_russian: "Адипат аммония"
  , name_german: "Ammoniumadipat"
  , name_hebrew: "אדיפט אמוניום"
  , name_french: "Adipate d'ammonium"
  , name_latvian: "Amonija adipināts"
  , e_number: "E359"
  , group: AcidityRegulator
  , source: [Synthetic]
  , description: ""
  , kosher: IssuficientData
}

e363 :: ENumber
e363 = {
  name_english: "Succinic acid"
  , name_russian: "Янтарная кислота"
  , name_german: "Bernsteinsäure"
  , name_hebrew: "חומצה סוקינית"
  , name_french: "Acide succinique"
  , name_latvian: "Dzintarskābe"
  , e_number: "E363"
  , group: AcidityRegulator
  , source: [Synthetic]
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e365 :: ENumber
e365 = {
  name_english: "Sodium fumarate"
  , name_russian: "Фумарат натрия"
  , name_german: "Natriumfumarat"
  , name_hebrew: "פומרט נתרן"
  , name_french: "Fumarate de sodium"
  , name_latvian: "Nātrija fumarāts"
  , e_number: "E365"
  , group: AcidityRegulator
  , source: [Synthetic]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e366 :: ENumber
e366 = {
  name_english: "Potassium fumarate"
  , name_russian: "Фумарат калия"
  , name_german: "Kaliumfumarat"
  , name_hebrew: "פומרט פוטסיום"
  , name_french: "Fumarate de potassium"
  , name_latvian: "Kālija fumarāts"
  , e_number: "E366"
  , group: AcidityRegulator
  , source: [Synthetic]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}


e367 :: ENumber
e367 = {
  name_english: "Calcium fumarate"
  , name_russian: "Фумарат кальция"
  , name_german: "Calciumfumarat"
  , name_hebrew: "פומרט סידן"
  , name_french: "Fumarate de calcium"
  , name_latvian: "Kalcija fumarāts"
  , e_number: "E367"
  , group: AcidityRegulator
  , source: [Synthetic]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e368 :: ENumber
e368 = {
  name_english: "Ammonium fumarate"
  , name_russian: "Фумарат аммония"
  , name_german: "Ammoniumfumarat"
  , name_hebrew: "פומרט אמוניום"
  , name_french: "Fumarate d'ammonium"
  , name_latvian: "Amonija fumarāts"
  , e_number: "E367"
  , group: AcidityRegulator
  , source: [Synthetic]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e370 :: ENumber
e370 = {
  name_english: "Heptonolactone"
  , name_russian: "Гептанолактон"
  , name_german: "Heptonolacton"
  , name_hebrew: "הפטונולקטון"
  , name_french: "Heptonolactone"
  , name_latvian: "Heptonolaktons"
  , e_number: "E370"
  , group: AcidityRegulator
  , source: [Synthetic]
  , description: ""
  , kosher: KosherIncludingPassover
}

e375 :: ENumber
e375 = {
  name_english: "Niacin, Nicotinic acid, Nicotinamide"
  , name_russian: "Ниацин, никотиновая кислота"
  , name_german: "Niacin"
  , name_hebrew: "ניאצין"
  , name_french: "Niacine"
  , name_latvian: "Niacīns"
  , e_number: "E375"
  , group: AcidityRegulator
  , source: [Synthetic]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e380 :: ENumber
e380 = {
  name_english: "Triammonium citrate"
  , name_russian: "Цитрат триаммония"
  , name_german: "Triammoniumcitrat"
  , name_hebrew: "ציטרט תריאמוניום"
  , name_french: "Citrate de triammonium"
  , name_latvian: "Triamonija citrāts"
  , e_number: "E380"
  , group: AcidityRegulator
  , source: [Synthetic]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e381 :: ENumber
e381 = {
  name_english: "Ammonium ferric citrate"
  , name_russian: "Железо-аммонийный цитрат"
  , name_german: "Ammoniumferrizitrat"
  , name_hebrew: "ציטרט אמוניום פריק סידן"
  , name_french: "Citrate d'ammonium ferrique"
  , name_latvian: "Amonija dzelzs citrāts"
  , e_number: "E381"
  , group: AcidityRegulator
  , source: [Synthetic]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e383 :: ENumber
e383 = {
  name_english : "Calcium glycerophosphate"
  , name_russian : "Глицерофосфат кальция"
  , name_german : "Calciumglycerophosphat"
  , name_hebrew : "גליצרופוספט סידן"
  , name_french : "Glycérophosphate de calcium"
  , name_latvian : "Kalcija glicerofosfāts"
  , e_number : "E383"
  , group : AcidityRegulator
  , source : [Synthetic]
  , description : ""
  , kosher : NeedHashgohoWholeYear
}

e384 :: ENumber
e384 = {
  name_english: "Isopropyl citrate"
  , name_russian: "Цитрат изопропиловый"
  , name_german: "Isopropylcitrat"
  , name_hebrew: "ציטרט איזופרופיל"
  , name_french: "Citrate d'isopropyle"
  , name_latvian: "Izopropilcitrāts"
  , e_number: "E384"
  , group: AcidityRegulator
  , source: [Synthetic]
  , description: ""
  , kosher: NeedHashgohoWholeYear 
}

e385 :: ENumber
e385 = {
  name_english: "Calcium disodium ethylene diamine tetra-acetate, (EDTA)"
  , name_russian: "Этилендиаминтетра-ацетат кальция-натрия"
  , name_german: "Calciumdinatriumethylenediamintetraacetat"
  , name_hebrew: "אתילן דיאמין טטרה-אצטט סידן-נתריום"
  , name_french: "Éthylènediaminetétraacétate de calcium disodique"
  , name_latvian: "Kalcija dinātrija etilēndiamīntetraacetāts"
  , e_number: "E385"
  , group: Stabilizer
  , source: [Synthetic]
  , description: ""
  , kosher: UsuallyKosherRarelyNeedsHashgoho
}

e386 :: ENumber
e386 = {
  name_english: "Disodium ethylene diamine tetraacetate (Disodium EDTA)"
  , name_russian: "Этилендиаминтетра-ацетат динатрия"
  , name_german: "Dinatriumethylenediamintetraacetat"
  , name_hebrew: "אתילן דיאמין טטרה-אצטט דינתריום"
  , name_french: "Éthylènediaminetétraacétate de disodium"
  , name_latvian: "Dinātrija etilēndiamīntetraacetāts"
  , e_number: "E386"
  , group: Stabilizer
  , source: [Synthetic]
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e387 :: ENumber
e387 = {
  name_english: "Oxystearin"
  , name_russian: "Оксистеарин"
  , name_german: "Oxystearin"
  , name_hebrew: "אוקסיסטיארין"
  , name_french: "Oxystéarine"
  , name_latvian: "Oksistearīns"
  , e_number: "E387"
  , group: Stabilizer
  , source: [Animal, Dangerous]
  , description: "Safek trefa"
  , kosher: NeedHashgohoWholeYear
}


e388 :: ENumber
e388 = {
  name_english: "Thiodipropionic acid"
  , name_russian: "Тиодипропионовая кислота"
  , name_german: "Thiodipropionsäure"
  , name_hebrew: "חומצה תיודיפרופיונית"
  , name_french: "Acide thiodipropionique"
  , name_latvian: "Tiodipropionskābe"
  , e_number: "E388"
  , group: None
  , source: [Synthetic, Dangerous]
  , description: ""
  , kosher: KosherForbidden
}

e389 :: ENumber
e389 = {
  name_english: "Dilauryl thiodipropionate"
  , name_russian: "Дилаврилтиодипропионат"
  , name_german: "Dilaurylthiodipropionat"
  , name_hebrew: "דילאוריל תיודיפרופיונאט"
  , name_french: "Dilauryl thiodipropionate"
  , name_latvian: "Dilauriltiodipropionāts"
  , e_number: "E389"
  , group: None
  , source: [Synthetic, Dangerous]
  , description: ""
  , kosher: KosherForbidden
}

e390 :: ENumber
e390 = {
  name_english: "Distearyl thiodipropionate"
  , name_russian: "Дистеарилтиодипропионат"
  , name_german: "Distearylthiodipropionat"
  , name_hebrew: "דיסטיריל תיודיפרופיונאט"
  , name_french: "Distearyl thiodipropionate"
  , name_latvian: "Disteariltiodipropionāts"
  , e_number: "E390"
  , group: None
  , source: [Synthetic, Dangerous]
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e391 :: ENumber
e391 = {

  name_english: "Phytic acid"
  , name_russian: "Фитиновая кислота"
  , name_german: "Phytinsäure"
  , name_hebrew: "חומצה פיטית"
  , name_french: "Acide phytique"
  , name_latvian: "Fitīnskābe"
  , e_number: "E391"
  , group: None
  , source: [Synthetic]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e399 :: ENumber
e399 = {
   name_english: "Calcium lactobionate"
  , name_russian: "Лактобионат кальция"
  , name_german: "Calciumlactobionat"
  , name_hebrew: "לקטוביונט סידן"
  , name_french: "Lactobionate de calcium"
  , name_latvian: "Kalcija laktobionāts"
  , e_number: "E399"
  , group: None
  , source: [Synthetic]
  , description: ""
  , kosher: NeedHashgohoWholeYear
}