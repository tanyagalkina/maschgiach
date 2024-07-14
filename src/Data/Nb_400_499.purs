
-- Thickeners, Stabilizers & Emulsifiers (400 - 499)

module Data.Nb400to499 (stabilizerENumberList) where

import Data.ENumberTypes (AdditiveGroup(..), ENumberList, Kashrut(..), Source(..), ENumber, emptyENumberList, insertEntry)

-- import Data.Number (e)

infixr 5 insertEntry as ++

stabilizerENumberList :: ENumberList
stabilizerENumberList =  e400 ++ e401 ++ e402 ++ e403 ++ e404 ++ e405 ++ e406 ++ e407 ++ e407a ++ e408 ++ e409 ++ e410 ++ e411 ++ e412 ++ e413 ++ e414 ++ e415 ++ e416 ++ e417 ++ e418 ++ e419 ++ e420 ++ e421 ++ e422 ++ e424 ++ e425 ++ e425a ++ e425b ++ e426 ++ e427 ++ e428 ++ e429 ++ e430 ++ e431 ++ e432 ++ e433 ++ e434 ++ e435 ++ e436 ++ e440a ++ e440b ++ e441 ++ e442 ++ e443 ++ e444 ++ e445 ++ e446 ++ e450a ++ e450b ++ e450c ++ e450d ++ e450d ++ e450e ++ e450f ++ e450g ++ e451a ++ e451b ++ e452a ++ e452b ++ e452c ++ e452d ++ e452e ++ e459 ++ e460 ++ e461 ++ e462 ++ e463 ++ e464 ++ e465 ++ e466 ++ e469 ++ e470a ++ e470b ++ e471 ++ e472a ++ e472b ++ e472c ++ e472d ++ e472e ++ e472f ++ e473 ++ e474 ++ e475 ++ e476 ++ e477 ++ e478 ++ e479b ++ e480 ++ e481 ++ e482 ++ e483 ++ e484 ++ e485 ++ e486 ++ e487 ++ e488 ++ e489 ++ e490 ++ e491 ++ e492 ++ e493 ++ e494 ++ e495 ++ e496 ++ e497 ++ e498 ++ e499 ++ 

   emptyENumberList

e400 :: ENumber
e400 = {
  name_english: "Alginic acid" 
  , name_russian: "Альгиновая кислота"
  , name_german: "Alginsäure"
  , name_hebrew: "חומצה אלגינית"
  , name_french: "Acide alginique"
  , name_latvian: "Algīnskābe"
  
  , e_number: "E400"
  , group: Emulsifier 
  , source: [Synthetic, Animal]
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e401 :: ENumber
e401 = {
  name_english: "Sodium alginate"
  , name_russian: "Альгинат натрия"
  , name_german: "Natriumalginat"
  , name_hebrew: "אלגינט נתרן"
  , name_french: "Alginate de sodium"
  , name_latvian: "Nātrija algināts" 
  , e_number: "E401"
  , group: Emulsifier 
  , source: [Synthetic]
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e402 :: ENumber
e402 = {
  name_english: "Potassium alginate"
  , name_russian: "Альгинат калия"
  , name_german: "Kaliumalginat"
  , name_hebrew: "אלגינט פוטסיום"
  , name_french: "Alginate de potassium"
  , name_latvian: "Kālija algināts" 
  , e_number: "E402"
  , group: Emulsifier 
  , source: [Synthetic]
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e403 :: ENumber
e403 = {
  name_english: "Ammonium alginate"
  , name_russian: "Альгинат аммония"
  , name_german: "Ammoniumalginat"
  , name_hebrew: "אלגינט אמוניום"
  , name_french: "Alginate d'ammonium"
  , name_latvian: "Amonija algināts"
  , e_number: "E403"
  , group: Emulsifier
  , source: [Synthetic]
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e404 :: ENumber
e404 = {
  name_english: "Calcium alginate"
  , name_russian: "Альгинат кальция"
  , name_german: "Calciumalginat"
  , name_hebrew: "אלגינט סידן"
  , name_french: "Alginate de calcium"
  , name_latvian: "Kalcija algināts"
  , e_number: "E404"
  , group: Emulsifier
  , source: [Synthetic]
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e405 :: ENumber
e405 = {
  name_english: "Propylene glycol alginate"
  , name_russian: "Пропиленгликольальгинат"
  , name_german: "Propylenglycolalginat"
  , name_hebrew: "פרופילן גליקול אלגינט"
  , name_french: "Alginate de propylène glycol"
  , name_latvian: "Propilēnglikola algināts"
  , e_number: "E405"
  , group: Emulsifier
  , source: [Synthetic]
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e406 :: ENumber
e406 = {
  name_english: "Agar"
  , name_russian: "Агар, агар-агар"
  , name_german: "Agar"
  , name_hebrew: "אגר אגר"
  , name_french: "Agar"
  , name_latvian: "Agar"
  , e_number: "E406"
  , group: Stabilizer
  , source: [Vegan]
  , description: ""
  , kosher: KosherIncludingPassover
}

e407 :: ENumber
e407 = {
  name_english: "Carrageenan, Irish moss"
  , name_russian: "Каррагинан и его натриевая, калиевая и аммонийная соли, включая фурцеллеран"
  , name_german: "Carrageen"
  , name_hebrew: "קרגינן"
  , name_french: "Carraghénane"
  , name_latvian: "Karragināns"
  , e_number: "E407"
  , group: Emulsifier
  , source: [Vegan]
  , description: ""
  , kosher: NeedHashgohoWholeYearSomeAllow
}

e407a :: ENumber
e407a = {
  name_english: "Processed eucheuma seaweed"
  , name_russian: "Водоросль евхеума"
  , name_german: "Verarbeitete Eucheuma-Alge"
  , name_hebrew: "סחול ים מעובד"
  , name_french: "Algues eucheuma traitées"
  , name_latvian: "Apstrādāta eucheuma jūras zāle"
  , e_number: "E407a"
  , group: Emulsifier
  , source: [Vegan]
  , description: ""
  , kosher: NeedHashgohoWholeYearSomeAllow
}

e408 :: ENumber
e408 = {
  name_english: "Bakers yeast glycan"
  , name_russian: "Дрожжи хлебопекарные гликан"
  , name_german: "Bäckerhefe-Glykan"
  , name_hebrew: "תמצית שמרים לאפייה"
  , name_french: "Glycane de levure de boulanger"
  , name_latvian: "Maizes rauga glikāns"
  , e_number: "E408"
  , group: Stabilizer
  , source: [Vegan]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e409 :: ENumber
e409 = {
  name_english: "Arabinogalactan"
  , name_russian: "Арабиногалактан"
  , name_german: "Arabinogalaktan"
  , name_hebrew: "ארבינוגלקטן"
  , name_french: "Arabinogalactane"
  , name_latvian: "Arabinogalaktāns"
  , e_number: "E409"
  , group: Stabilizer
  , source: []
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e410 :: ENumber
e410 = {
  name_english: "Locust bean gum, carob gum"
  , name_russian: "Камедь рожкового дерева"
  , name_german: "Johannisbrotkernmehl, Johannisbrotgummi"
  , name_hebrew: "גומי חרוב (אבקת גרעיני חרוב)"
  , name_french: "Gomme de caroube"
  , name_latvian: "Locust bean gum, carob gum"
  , e_number: "E410"
  , group: Emulsifier
  , source: [Vegan]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e411 :: ENumber
e411 = {
  name_english: "Oat gum"
  , name_russian: "Овсяная камедь"
  , name_german: "Hafergummi"
  , name_hebrew: "חומר מגנון שיבולת שועל"
  , name_french: "Gomme d'avoine"
  , name_latvian: "Auzu sveķi"
  , e_number: "E411"
  , group: Stabilizer
  , source: [Vegan, Chametz]
  , description: ""
  , kosher: KosherChametz
}

e412 :: ENumber
e412 = {
  name_english: "Guar gum (Jaguar gum; Cluster bean)"
  , name_russian: "Гуаровая камедь"
  , name_german: "Guarkernmehl"
  , name_hebrew: " (קמח מזרעי גואר) אבקת גואר"
  , name_french: "Gomme de guar"
  , name_latvian: "Guāra sveķi"
  , e_number: "E412"
  , group: Stabilizer
  , source: [Vegan, Kitniyot]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e413 :: ENumber
e413 = {
  name_english: "Tragacanth"
  , name_russian: "Трагакант"
  , name_german: "Traganth"
  , name_hebrew: "טרגקנת"
  , name_french: "Gomme Adragante"
  , name_latvian: "Tragakants"
  , e_number: "E413"
  , group: Emulsifier
  , source: [Vegan]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e414 :: ENumber
e414 = {
  name_english: "Acacia gum; Gum arabic; Sudan gum; Gum hashab; Kordofan gum"
  , name_russian: "Арабская камедь, гуммиарабик"
  , name_german: "Akaziengummi, Gummi arabicum"
  , name_hebrew: "גומי עץ שיטה"
  , name_french: "Gomme arabique"
  , name_latvian: "Acacia gum, gum arabic"
  , e_number: "E414"
  , group: Emulsifier
  , source: [Animal]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e415 :: ENumber
e415 = {
  name_english: "Xanthan gum"
  , name_russian: "Ксантановая камедь"
  , name_german: "Xanthan"
  , name_hebrew: "קסנתן"
  , name_french: "Gomme xanthane"
  , name_latvian: "Ksantāna sveķi"
  , e_number: "E415"
  , group: Stabilizer
  , source: [Vegan, Kitniyot]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e416 :: ENumber
e416 = {
  name_english: "Karaya gum (Sterculia gum; Indian tragacanth)"
  , name_russian: "Карайи камедь"
  , name_german: "Karayagummi"
  , name_hebrew: "גומי קראיה"
  , name_french: "Gomme karaya"
  , name_latvian: "Karaja sveķi"
  , e_number: "E416"
  , group: Emulsifier
  , source: [Vegan]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e417 :: ENumber
e417 = {
  name_english: "Tara gum"
  , name_russian: "Тары камедь"
  , name_german: "Taragummi"
  , name_hebrew: "גומי טרה"
  , name_french: "Gomme Tara"
  , name_latvian: "Tara sveķi"
  , e_number: "E417"
  , group: Stabilizer
  , source: [Vegan]
  , description: ""
  , kosher: KosherIncludingPassover
}

e418 :: ENumber
e418 = {
  name_english: "Gellan gum"
  , name_russian: "Геллановая камедь"
  , name_german: "Gellangummi"
  , name_hebrew: "ג`לאן"
  , name_french: "Gomme gellane"
  , name_latvian: "Gelāna sveķi"
  , e_number: "E418"
  , group: Emulsifier
  , source: [Synthetic]
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e419 :: ENumber
e419 = {
  name_english: "Gum ghatti"
  , name_russian: "Gum ghatti"
  , name_german: "Gum ghatti"
  , name_hebrew: "גום גאטי"
  , name_french: "Gomme ghatti"
  , name_latvian: "Gum ghatti"
  , e_number: "E419"
  , group: Emulsifier
  , source: []
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e420 :: ENumber
e420 = {
  name_english: "Sorbitol"
  , name_russian: "Сорбит"
  , name_german: "Sorbit"
  , name_hebrew: "סורביטול"
  , name_french: "Sorbitol"
  , name_latvian: "Sorbitols"
  , e_number: "E420"
  , group: Sweetener
  , source: [Chametz, Kitniyot]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e421 :: ENumber
e421 = {
  name_english: "Mannitol"
  , name_russian: "Маннит"
  , name_german: "Mannit"
  , name_hebrew: "מניטול"
  , name_french: "Mannitol"
  , name_latvian: "Mannīts"
  , e_number: "E421"
  , group: Sweetener
  , source: [Chametz, Kitniyot]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e422 :: ENumber
e422 = {
  name_english: "Glycerol"
  , name_russian: "Глицерин"
  , name_german: "Glycerin"
  , name_hebrew: "גליצרין"
  , name_french: "Glycérol"
  , name_latvian: "Glicerīns"
  , e_number: "E422"
  , group: Sweetener
  , source: [Animal, Chametz, Kitniyot]
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e424 :: ENumber
e424 = {
  name_english: "Curdlan"
  , name_russian: "Curdlan"
  , name_german: "Curdlan"
  , name_hebrew: "קורדלן"
  , name_french: "Curdlan"
  , name_latvian: "Curdlan"
  , e_number: "E424"
  , group: GellingAgent
  , source: [Synthetic, Dangerous]
  , description: "Forbidden"
  , kosher: NeedHashgohoWholeYear
}

e425 :: ENumber
e425 = {
  name_english: "Konjac"
  , name_russian: "Коньяк"
  , name_german: "Konjak"
  , name_hebrew: "קונג'אק"
  , name_french: "Konjac"
  , name_latvian: "Konjaks"
  , e_number: "E425"
  , group: Emulsifier
  , source: [Vegan, Dangerous]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e425a :: ENumber
e425a = {
  name_english: "Konjac gum"
  , name_russian: "Коньяковая камедь"
  , name_german: "Konjakgummi"
  , name_hebrew:" גומי קונג'אק"
  , name_french: "Gomme Konjac"
  , name_latvian: "Konjaka sveķi"
  , e_number: "E425a"
  , group: Emulsifier
  , source: [Vegan, Dangerous]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e425b :: ENumber
e425b = {
  name_english: "Konjac glucomanne"
  , name_russian: "Коньяк глюкоманнан"
  , name_german: "Konjak-Glucomannan"
  , name_hebrew: "קונג'אק גלוקומנן"
  , name_french: "Konjac glucomannane"
  , name_latvian: "Konjaka glucomannāns"
  , e_number: "E425a"
  , group: Emulsifier
  , source: [Vegan, Dangerous]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e426 :: ENumber
e426 = {
  name_english: "Soybean hemicellulose"
  , name_russian: "Соевая гемицеллюлоза"
  , name_german: "Sojabohnenhemicellulose"
  , name_hebrew: "סויה המיצלולוזה"
  , name_french: "Hémicellulose de soja"
  , name_latvian: "Sojas hemiceluloze"
  , e_number: "E426"
  , group: Emulsifier
  , source: [Vegan, Kitniyot]
  , description: "Kintniyot"
  , kosher: KosherNeedPassoverHashgoho
}

e427 :: ENumber
e427 = {
  name_english: "Cassia gum"
  , name_russian: "Кассия камедь"
  , name_german: "Cassia-Gummi"
  , name_hebrew: "גומי קסיה"
  , name_french: "Gomme de cassia"
  , name_latvian: "Kasijas sveķi"
  , e_number: "E427"
  , group: Emulsifier
  , source: [Vegan]
  , description: ""
  , kosher: IssuficientData
}

e428 :: ENumber
e428 = {
  name_english: "Gelatin"
  , name_russian: "Желатин"
  , name_german: "Gelatine"
  , name_hebrew: "ג'לטין"
  , name_french: "Gélatine"
  , name_latvian: "Želatīns"
  , e_number: "E428"
  , group: Stabilizer
  , source: [Animal]
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e429 :: ENumber
e429 = {
  name_english: "Peptones"
  , name_russian: "Пептоны"
  , name_german: "Peptone"
  , name_hebrew: "פפטונים"
  , name_french: "Peptones"
  , name_latvian: "Peptoni"
  , e_number: "E429"
  , group: Acid
  , source: [Synthetic]
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e430 :: ENumber
e430 = {
  name_english: "Polyoxyethylene (8) stearate"
  , name_russian: "Полиоксиэтилен (8) стеарат"
  , name_german: "Polyoxyethylen (8) stearat"
  , name_hebrew: "פוליאוקסיאתילן (8) סטיארט"
  , name_french: "Polyoxyéthylène (8) stéarate"
  , name_latvian: "Polieoksietilēns (8) stearāts"
  , e_number: "E430"
  , group: Stabilizer
  , source: [Synthetic, Animal]
  , description: ""
  , kosher: MostlyNotKosher
}

e431 :: ENumber
e431 = {
  name_english: "Polyoxyethylene (40) stearate"
  , name_russian: "Полиоксиэтилен (40) стеарат"
  , name_german: "Polyoxyethylen (40) stearat"
  , name_hebrew: "פוליאוקסיאתילן (40) סטיארט"
  , name_french: "Polyoxyéthylène (40) stéarate"
  , name_latvian: "Polieoksietilēns (40) stearāts"
  , e_number: "E431"
  , group: Emulsifier
  , source: [Synthetic, Animal]
  , description: ""
  , kosher: MostlyNotKosher
}

e432 :: ENumber
e432 = {
  name_english: "Polyoxyethylene (20) sorbitan monostearate, Polysorbate 20"
  , name_russian: "Полиоксиэтиленсорбитан(20), Твин 20"
  , name_german: "Polysorbat 20"
  , name_hebrew: "פוליאוקסיאתילן סורביטן (20), פוליסורבט 20"
  , name_french: "Polysorbate 20"
  , name_latvian: "Polieoksietilēns sorbitāns (20), Polisorbāts 20"
  , e_number: "E432"
  , group: Emulsifier
  , source: [Synthetic, Animal]
  , description: ""
  , kosher: MostlyNotKosher
}

e433 :: ENumber
e433 = {
  name_english:"Polyoxyethylene (20) sorbitan monooleate, Polysorbate 80"
  , name_russian: "Полиоксиэтиленсорбитан (20) моноолеат, Твин 80"
  , name_german: "Polysorbat 80"
  , name_hebrew: "פוליאוקסיאתילן סורביטן (20) מונואוליאט, פוליסורבט 80"
  , name_french: "Polysorbate 80"
  , name_latvian: "Polieoksietilēns sorbitāns (20) monooleāts, Polisorbāts 80"
  , e_number: "E433"
  , group: Emulsifier
  , source: [Synthetic, Animal]
  , description: ""
  , kosher: MostlyNotKosher
}

e434 :: ENumber
e434 = {
  name_english: "Polyoxyethylene (20) sorbitan monopalmitate, Polysorbate 40"
  , name_russian: "Полиоксиэтиленсорбитан (20) монопальмитат, Твин 40"
  , name_german: "Polysorbat 40"
  , name_hebrew: "פוליאוקסיאתילן סורביטן (20) מונופלמיטט, פוליסורבט 40"
  , name_french: "Polysorbate 40"
  , name_latvian: "Polieoksietilēns sorbitāns (20) monopalmiāts, Polisorbāts 40"
  , e_number: "E434"
  , group: Emulsifier
  , source: [Synthetic, Animal]
  , description: ""
  , kosher: MostlyNotKosher
}

e435:: ENumber
e435 = {
  name_english: "Polyoxyethylene (20) sorbitan monostearate, Polysorbate 60"
  , name_russian: "Полиоксиэтиленсорбитан (20) моностеарат, Твин 60"
  , name_german: "Polysorbat 60"
  , name_hebrew: "פוליאוקסיאתילן סורביטן (20) מונוסטיארט, פוליסורבט 60"
  , name_french: "Polysorbate 60"
  , name_latvian: "Polieoksietilēns sorbitāns (20) monostearāts, Polisorbāts 60"
  , e_number: "E435"
  , group: Emulsifier
  , source: [Synthetic, Animal]
  , description: ""
  , kosher: MostlyNotKosher
}

e436 :: ENumber
e436 = {
  name_english: "Polyoxyethylene (20) sorbitan tristearate, Polysorbate 65"
  , name_russian: "Полиоксиэтиленсорбитан (20) тристеарат, Твин 65"
  , name_german: "Polysorbat 65"
  , name_hebrew: "פוליאוקסיאתילן סורביטן (20) טריסטיארט, פוליסורבט 65"
  , name_french: "Polysorbate 65"
  , name_latvian: "Polieoksietilēns sorbitāns (20) tristearāts, Polisorbāts 65"
  , e_number: "E436"
  , group: Emulsifier
  , source: [Synthetic, Animal]
  , description: ""
  , kosher: MostlyNotKosher
}

e440a ::ENumber
e440a = {
  name_english: "Pectin"
  , name_russian: "Пектин"
  , name_german: "Pektin"
  , name_hebrew: "פקטין"
  , name_french: "Pectine"
  , name_latvian: "Pektīns"
  , e_number: "E440a"
  , group: Emulsifier
  , source: [Vegan, Wine]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e440b :: ENumber
e440b = {
  name_english: "Amidated pectin"
  , name_russian: "Амидированный пектин"
  , name_german: "Amidierter Pektin"
  , name_hebrew: "פקטין אמידי"
  , name_french: "Pectine amidée"
  , name_latvian: "Pektīns amidēts"
  , e_number: "E440b"
  , group: Emulsifier
  , source: [Vegan, Wine]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e441 :: ENumber
e441 = {
  name_english: "Gelatine"
  , name_russian: "Желатин"
  , name_german: "Gelatine"
  , name_hebrew: "ג'לטין"
  , name_french: "Gélatine"
  , name_latvian: "Želatīns"
  , e_number: "E441"
  , group: Stabilizer
  , source: [Animal]
  , description: ""
  , kosher: MostlyNotKosher
}

e442 :: ENumber
e442 = {
  name_english: "Ammonium phosphatides (Emulsifier YN)"
  , name_russian: "Фосфатидов аммонийные соли"
  , name_german: "Ammoniumphosphatide"
  , name_hebrew: "פוספטידי אמוניום"
  , name_french: "Phosphatides d'ammonium"
  , name_latvian: "Amonija fosfatīdi"
  , e_number: "E442"
  , group: Emulsifier
  , source: [Vegan, Synthetic]
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e443 :: ENumber
e443 = {
  name_english: "Brominated vegetable oil"
  , name_russian: "Бромированное растительное масло"
  , name_german: "Bromiertes Pflanzenöl"
  , name_hebrew: "שמן צמחי מברומיד"
  , name_french: "Huile végétale bromée"
  , name_latvian: "Bromēta augu eļļa"
  , e_number: "E443"
  , group: Emulsifier
  , source: [Vegan, Animal]
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e444 :: ENumber
e444 = {
  name_english: "Sucrose acetate isobutyrate"
  , name_russian: "Ацетат изобутират сахарозы"
  , name_german: "Saccharoseacetatisobutyrat"
  , name_hebrew: "אצטט איזובוטיראט של סוכרוז"
  , name_french: "Acétate d'isobutyrate de saccharose"
  , name_latvian: "Saharoze acetāta izobutirāts"
  , e_number: "E444"
  , group: Emulsifier
  , source: [Vegan, Synthetic]
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e445 :: ENumber
e445 = {
  name_english: "Glycerol esters of wood rosin"
  , name_russian: "Эфиры глицерина и смоляных кислот"
  , name_german: "Glycerinester von Holzharz"
  , name_hebrew: "אסטרים של גליצרול עץ רוזין"
  , name_french: "Esters de glycérol de résine de bois"
  , name_latvian: "Glicerīna esteri no koka saknes"
  , e_number: "E445"
  , group: Emulsifier
  , source: [Vegan, Animal]
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e446 :: ENumber
e446 = {
  name_english: "Succistearin"
  , name_russian: "Сукцистеарин"
  , name_german: "Succistearin"
  , name_hebrew: "סוקסיסטיארין"
  , name_french: "Succistéarine"
  , name_latvian: "Sukcistearīns"
  , e_number: "E446"
  , group: Emulsifier
  , source: []
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e450a :: ENumber
e450a = {
  name_english: "Disodium diphosphate"
  , name_russian: "Пирофосфат динатриевый"
  , name_german: "Dinatriumdiphosphat"
  , name_hebrew: "דיסודיום דיפוספט"
  , name_french: "Diphosphate disodique"
  , name_latvian: "Dinātrija difosfāts"
  , e_number: "E450a"
  , group: Emulsifier
  , source: [Synthetic]
  , description: ""
  , kosher: KosherIncludingPassover
}

e450b :: ENumber
e450b = {
  name_english: "Trisodium diphosphate"
  ,name_russian: "Пирофосфат тринатриевый"
  ,name_german: "Trinatriumdiphosphat"
  ,name_hebrew: "טריסודיום דיפוספט"
  ,name_french: "Diphosphate trisodique"
  ,name_latvian: "Trinātrija difosfāts"
  , e_number: "E450b"
  , group: Emulsifier
  , source: [Synthetic]
  , description: ""
  , kosher: KosherIncludingPassover
}

e450c :: ENumber
e450c = {
  name_english: "Tetrasodium diphosphate"
  , name_russian: "Пирофосфат  четырехнатриевый"
  , name_german: "Tetranatriumdiphosphat"
  , name_hebrew: "טטראסודיום דיפוספט"
  , name_french: "Diphosphate tétrasodique"
  , name_latvian: "Tetranātrija difosfāts"
  , e_number: "E450c"
  , group: Emulsifier
  , source: [Synthetic]
  , description: ""
  , kosher: KosherIncludingPassover
}

e450d :: ENumber
e450d = {
  name_english: "Dipotassium diphosphate"
  , name_russian: "Пирофосфат дикалиевый"
  , name_german: "Dikaliumdiphosphat"
  , name_hebrew: "דיפוטסיום דיפוספט"
  , name_french: "Diphosphate dipotassique"
  , name_latvian: "Dikālija difosfāts"
  , e_number: "E450d"
  , group: Emulsifier
  , source: [Synthetic]
  , description: ""
  , kosher: KosherIncludingPassover
}

e450e :: ENumber
e450e = {
  name_english: "Tetrapotassium diphosphate"
  , name_russian: "Пирофосфат четырехкалиевый"
  , name_german: "Tetrapotassiumdiphosphat"
  , name_hebrew: "טטראפוטסיום דיפוספט"
  , name_french: "Diphosphate tétrapotassique"
  , name_latvian: "Tetrapotāss difosfāts"
  , e_number: "E450e"
  , group: Emulsifier
  , source: [Synthetic]
  , description: ""
  , kosher: KosherIncludingPassover
}

e450f :: ENumber
e450f = {
  name_english: "Dicalcium diphosphate"
  , name_russian: "Пирофосфат дикальциевый"
  , name_german: "Dicalciumdiphosphat"
  , name_hebrew: "דיקלציום דיפוספט"
  , name_french: "Diphosphate dicalcique"
  , name_latvian: "Dikalcija difosfāts" 
  , e_number: "E450f"
  , group: Emulsifier
  , source: [Synthetic]
  , description: ""
  , kosher: KosherIncludingPassover
}

e450g :: ENumber
e450g = {
  name_english: "Calcium dihydrogen diphosphate"
  , name_russian: "Дигидропирофосфат кальция"
  , name_german: "Calciumdihydrogendiphosphat"
  , name_hebrew: "קלציום דיהידרוגן דיפוספט"
  , name_french: "Diphosphate de dihydrogène de calcium"
  , name_latvian: "Kalcija dihidrogēndifosfāts"
  , e_number: "E450g"
  , group: Emulsifier
  , source: [Synthetic]
  , description: ""
  , kosher: KosherIncludingPassover
}

e451a :: ENumber
e451a = {
  name_english: "Sodium triphosphate (pentasodium triphosphate)"
  , name_russian: "Трифосфат натрия 5-замещенный"
  , name_german: "Natriumtriphosphat"
  , name_hebrew: "פנטאסודיום טריפוספט"
  , name_french: "Triphosphate de sodium"
  , name_latvian: "Nātrija trifosfāts"
  , e_number: "E451a"
  , group: Emulsifier
  , source: [Synthetic]
  , description: ""
  , kosher: KosherIncludingPassover
}

e451b :: ENumber
e451b = {
  name_english: "Pentapotassium triphosphate"
  , name_russian: "Трифосфат калия 5-замещенный"
  , name_german: "Kaliumtriphosphat"
  , name_hebrew: "פנטאפוטסיום טריפוספט"
  , name_french: "Triphosphate de potassium"
  , name_latvian: "Pentakālija trifosfāts"
  , e_number: "E451b"
  , group: Emulsifier
  , source: [Synthetic]
  , description: ""
  , kosher: KosherIncludingPassover
}


e452a :: ENumber
e452a = {
  name_english: "Sodium polyphosphates"
  , name_russian: "Полифосфат натрия"
  , name_german: "Natriumpolyphosphate"
  , name_hebrew: "פוליפוספטים של נתרן"
  , name_french: "Polyphosphates de sodium"
  , name_latvian: "Nātrija polifosfāti"
  , e_number: "E452a"
  , group: Emulsifier
  , source: [Synthetic]
  , description: ""
  , kosher: KosherIncludingPassover
}

e452b :: ENumber
e452b = {
  name_english: "Potassium polyphosphates"
  ,name_russian: "Полифосфат калия"
  , name_german: "Kaliumpolyphosphate"
  , name_hebrew: "פוליפוספטים של אשלגן"
  , name_french: "Polyphosphates de potassium"
  , name_latvian: "Kālija polifosfāti"
  , e_number: "E452b"
  , group: Emulsifier
  , source: [Synthetic]
  , description: ""
  , kosher: KosherIncludingPassover
}

e452c :: ENumber
e452c = {
  name_english: "Sodium calcium polyphosphate"
  , name_russian: "Полифосфат натрия кальция"
  , name_german: "Natriumcalcium-polyphosphat"
  , name_hebrew: "פוליפוספטים של נתרן וסידן"
  , name_french: "Polyphosphates de sodium-calcium"
  , name_latvian: "Nātrija kalcija polifosfāti"
  , e_number: "E452c"
  , group: Emulsifier
  , source: [Synthetic]
  , description: ""
  , kosher: KosherIncludingPassover
}

e452d :: ENumber
e452d = {
  name_english: "Calcium polyphosphates"
  , name_russian: "Полифосфаты кальция"
  , name_german: "Calcium-polyphosphate"
  , name_hebrew: "פוליפוספטים של סידן"
  , name_french: "Polyphosphates de calcium"
  , name_latvian: "Kalcija polifosfāti"
  , e_number: "E452d"
  , group: Emulsifier
  , source: [Synthetic]
  , description: ""
  , kosher: KosherIncludingPassover
}

e452e :: ENumber
e452e = {
  name_english: "Ammonium polyphosphate"
  , name_russian: " Полифосфаты аммония"
  , name_german: "Ammoniumpolyphosphate"
  , name_hebrew: "פוליפוספטים של אמוניום"
  , name_french: "Polyphosphates d'ammonium"
  , name_latvian: "Amonija polifosfāti"
  , e_number: "E452e"
  , group: Emulsifier
  , source: [Synthetic]
  , description: ""
  , kosher: KosherIncludingPassover
}

e459 :: ENumber
e459 = {
  name_english: "Beta-cyclodextrin"
  , name_russian: "Бета-циклодекстрин"
  , name_german: "Beta-Cyclodextrin"
  , name_hebrew: "בטא-סיקלודקסטרין"
  , name_french: "Bêta-cyclodextrine"
  , name_latvian: "Beta-ciklodekstrīns"
  , e_number: "E459"
  , group: Emulsifier
  , source: [Synthetic]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e460 :: ENumber
e460 = {
  name_english: "Cellulose (Microcrystalline cellulose, Powdered cellulose)"
  , name_russian: "Целлюлоза (Целлюлоза микрокристаллическая, Целлюлоза в порошке)"
  , name_german: "Cellulose (Mikrokristalline Cellulose, Pulverisierte Cellulose)"
  , name_hebrew: "סלולוזה (צלולוזה מיקרוקריסטלית, צלולוזה באבקה)"
  , name_french: "Cellulose (Cellulose microcristalline, Cellulose en poudre)"
  , name_latvian: "Celuloze (Mikrokristāliska celuloze, Pulverizēta celuloze)"
  , e_number: "E460"
  , group: Emulsifier
  , source: [Vegan]
  , description: "" -- TODO: check conflict: mahor lekashrut has needHashgohoWholeYear
  , kosher: KosherNeedPassoverHashgoho
}

e461 :: ENumber
e461 = {
  name_english: "Methyl cellulose"
  , name_russian: "Метилцеллюлоза"
  , name_german: "Methylcellulose"
  , name_hebrew: "מתיל צלולוזה"
  , name_french: "Méthylcellulose"
  , name_latvian: "Metilceluloze"
  , e_number: "E461"
  , group: Emulsifier
  , source: [Vegan]
  , description: "" -- TODO: check conflict: mahor lekashrut has needHashgohoWholeYear
  , kosher: KosherIncludingPassover
}

e462 :: ENumber
e462 = {
  name_english: "Ethyl cellulose"
  , name_russian: "Этилцеллюлоза"
  , name_german: "Ethylcellulose"
  , name_hebrew: "אתיל צלולוזה"
  , name_french: "Éthylcellulose"
  , name_latvian: "Etilceluloze"
  , e_number: "E462"
  , group: Emulsifier
  , source: [Vegan]
  , description: "" -- TODO: check conflict: mahor lekashrut has needHashgohoWholeYear
  , kosher: KosherIncludingPassover
}

e463 :: ENumber
e463 = {
  name_english: "Hydroxypropyl cellulose"
  , name_russian: "Гидроксипропилцеллюлоза"
  , name_german: "Hydroxypropylcellulose"
  , name_hebrew: "הידרוקסיפרופיל צלולוזה"
  , name_french: "Hydroxypropylcellulose"
  , name_latvian: "Hidroksipropilceluloze"
  , e_number: "E463"
  , group: Emulsifier
  , source: [Vegan]
  , description: "" -- TODO: check conflict: mahor lekashrut has needHashgohoWholeYear
  , kosher: KosherIncludingPassover
}

e464 :: ENumber
e464 = {
  name_english: "Hypromellose (Hydroxypropyl methyl cellulose)"
  , name_russian: "Гидроксипропилметилцеллюлоза"
  , name_german: "Hydroxypropylmethylcellulose"
  , name_hebrew: "הידרוקסיפרופיל מתיל צלולוזה"
  , name_french: "Hydroxypropylméthylcellulose"
  , name_latvian: "Hidroksipropilmetilceluloze"
  , e_number: "E464"
  , group: Emulsifier
  , source: [Vegan, Wine]
  , description: "" -- TODO: check conflict: mahor lekashrut has needHashgohoWholeYear
  , kosher: KosherIncludingPassover
}

e465 :: ENumber
e465 = {
  name_english: "Ethyl methyl cellulose"
  , name_russian: "Метилэтилцеллюлоза"
  , name_german: "Methylethylcellulose"
  , name_hebrew: "מתיל אתיל צלולוזה"
  , name_french: "Méthyléthylcellulose"
  , name_latvian: "Metiletilceluloze"
  , e_number: "E465"
  , group: Emulsifier
  , source: [Vegan, Wine]
  , description: "" -- TODO: check conflict: mahor lekashrut has needHashgohoWholeYear
  , kosher: KosherIncludingPassover
}

e466 :: ENumber
e466 = {
  name_english: "Carboxymethyl cellulose, Sodium carboxymethyl cellulose"
  , name_russian: "Карбоксиметилцеллозы натриевая соль, КМЦ"
  , name_german: "Carboxymethylcellulose, Natriumcarboxymethylcellulose"
  , name_hebrew: "קרבוקסימתיל צלולוזה, נתרן קרבוקסימתיל צלולוזה"
  , name_french: "Carboxyméthylcellulose, Carboxyméthylcellulose de sodium"
  , name_latvian: "Karboksimetilceluloze, Nātrija karboksimetilceluloze"
  , e_number: "E466"
  , group: Emulsifier
  , source: [Vegan, Wine]
  , description: "" -- TODO: check conflict: mahor lekashrut has needHashgohoWholeYear
  , kosher: KosherIncludingPassover
}

e469 :: ENumber
e469 = {
  name_english: "Enzymically hydrolysed carboxymethylcellulose"
  , name_russian: "Ферментативно гидролизованная карбоксиметилцеллюлоза"
  , name_german: "Enzymatisch hydrolysierte Carboxymethylcellulose"
  , name_hebrew: "קרבוקסימתיל צלולוזה הידרוליזה באמצעות אנזים"
  , name_french: "Carboxyméthylcellulose hydrolysée par voie enzymatique"
  , name_latvian: "Enzīmiski hidrolizēta karboksimetilceluloze"
  , e_number: "E469"
  , group: Emulsifier
  , source: []
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e470a :: ENumber
e470a = {
  name_english: "Sodium, potassium and calcium salts of fatty acids"
  , name_russian: "Жирных кислот соли алюминия, кальция, натрия,калия и аммония"
  , name_german: "Natrium-, Kalium- und Calciumsalze von Fettsäuren"
  , name_hebrew: "מלחי חומצות שומן של נתרן, קליום וסידן"
  , name_french: "Sels de sodium, de potassium et de calcium d'acides gras"
  , name_latvian: "Taukskābju nātrija, kālija un kalcija sāļi"
  , e_number: "E470a"
  , group: AntiCakingAgent
  , source: [Animal]
  , description: ""
  , kosher: MostlyNotKosher
}

e470b :: ENumber
e470b = {
  name_english: "Magnesium salts of fatty acids"
  , name_russian: "Магниевые соли жирных кислот"
  , name_german: "Magnesiumsalze von Fettsäuren"
  , name_hebrew: "מלחי חומצות שומן של מגנזיום"
  , name_french: "Sels de magnésium d'acides gras"
  , name_latvian: "Taukskābju magnija sāļi"
  , e_number: "E470b"
  , group: AntiCakingAgent
  , source: [Animal]
  , description: ""
  , kosher: MostlyNotKosher
}

e471:: ENumber
e471 = {
  name_english: "Mono- and diglycerides of fatty acids"
  , name_russian: "Моно- и диглицериды жирных кислот"
  , name_german: "Mono- und Diglyceride von Speisefettsäuren"
  , name_hebrew: "מונו- ודי גליצרידים של חומצות שומן"
  , name_french: "Mono- et diglycérides d'acides gras"
  , name_latvian: "Taukskābju mono- un diglicerīdi"
  , e_number: "E471"
  , group: Emulsifier
  , source: [Synthetic, Animal]
  , description: ""
  , kosher: MostlyNotKosher
}

e472a :: ENumber
e472a = {
  name_english: "Acetic acid esters of mono- and diglycerides of fatty acids"
  , name_russian: "Уксусная кислота эфиры моно- и диглицеридов жирных кислот"
  , name_german: "Essigsäureester von Mono- und Diglyceriden von Speisefettsäuren"
  , name_hebrew: "אצטט אצטרים של מונו- ודי גליצרידים של חומצות שומן"
  , name_french: "Esters acétiques de mono- et diglycérides d'acides gras"
  , name_latvian: "Taukskābju mono- un diglicerīdu acetāti"
  , e_number: "E472a"
  , group: Emulsifier
  , source: [Synthetic, Animal]
  , description: ""
  , kosher: MostlyNotKosher
}

e472b :: ENumber
e472b = {
  name_english: "Lactic acid esters of mono- and diglycerides of fatty acids"
  , name_russian: "Эфиры моно- и диглицеридов, молочной и жирных кислот"
  , name_german: "Milchsäureester von Mono- und Diglyceriden von Speisefettsäuren"
  , name_hebrew: "אצטט אצטרים של מונו- ודי גליצרידים של חומצות שומן"
  , name_french: "Esters lactiques de mono- et diglycérides d'acides gras"
  , name_latvian: "Taukskābju mono- un diglicerīdu acetāti"
  , e_number: "E472b"
  , group: Emulsifier
  , source: [Animal]
  , description: ""
  , kosher: MostlyNotKosher
}

e472c :: ENumber
e472c = {
  name_english: "Citric acid esters of mono– and diglycerides of fatty acids"
  , name_russian: "Эфиры моно- и диглицерилов, лимонной и жирных кислот"
  , name_german: "Zitronensäureester von Mono- und Diglyceriden von Speisefettsäuren"
  , name_hebrew: "אצטט אצטרים של מונו- ודי גליצרידים של חומצות שומן"
  , name_french: "Esters citriques de mono- et diglycérides d'acides gras"
  , name_latvian: "Taukskābju mono- un diglicerīdu citrāti"
  , e_number: "E472c"
  , group: Emulsifier
  , source: [Animal, Chametz]
  , description: ""
  , kosher: MostlyNotKosher
}

e472d :: ENumber
e472d = {
  name_english: "Tartaric acid esters of mono– and diglycerides of fatty acids"
  , name_russian: "Эфиры моно- и дигецеридов,винной и жирных кислот"
  , name_german: "Weinsäureester von Mono- und Diglyceriden von Speisefettsäuren"
  , name_hebrew: "אצטט אצטרים של מונו- ודי גליצרידים של חומצות שומן"
  , name_french: "Esters tartriques de mono- et diglycérides d'acides gras"
  , name_latvian: "Taukskābju mono- un diglicerīdu vīnāti"
  , e_number: "E472d"
  , group: Emulsifier
  , source: [Animal, Wine]
  , description: ""
  , kosher: MostlyNotKosher
}

e472e :: ENumber
e472e = {
  name_english: "Mono- and diacetyl tartaric acid esters of mono- and diglycerides of fatty acids"
  , name_russian: "Эфиры моно- и диглицеридов,диацетилвинной и жирных кислот"
  , name_german: "Essigsäureester von Mono- und Diglyceriden von Speisefettsäuren"
  , name_hebrew: "אצטט אצטרים של מונו- ודי גליצרידים של חומצות שומן"
  , name_french: "Esters acétyltartriques de mono- et diglycérides d'acides gras"
  , name_latvian: "Taukskābju mono- un diglicerīdu acetāti"
  , e_number: "E472e"
  , group: Emulsifier
  , source: [Animal]
  , description: ""
  , kosher: MostlyNotKosher
}

e472f :: ENumber
e472f = {
  name_english: "Mixed acetic and tartaric acid esters of mono– and diglycerides of fatty acids"
  , name_russian: "Смешанные эфиры моно- и диглицеридов, уксусной, винной и жирных кислот"
  , name_german: "Gemischte Essig- und Weinsäureester von Mono- und Diglyceriden von Speisefettsäuren"
  , name_hebrew: "אצטט אצטרים של מונו- ודי גליצרידים של חומצות שומן"
  , name_french: "Esters acétiques et tartriques de mono- et diglycérides d'acides gras"
  , name_latvian: "Taukskābju mono- un diglicerīdu acetāti"
  , e_number: "E472f"
  , group: Emulsifier
  , source: [Animal, Wine]
  , description: ""
  , kosher: MostlyNotKosher
}

e473 :: ENumber
e473 = {
  name_english: "Sucrose esters of fatty acids"
  , name_russian: "Эфиры сахарозы и жирных кислот"
  , name_german: "Zuckerester von Speisefettsäuren"
  , name_hebrew: "אצטט אצטרים של סוכרוז וחומצות שומן"
  , name_french: "Sucroesters d'acides gras alimentaires"
  , name_latvian: "Taukskābju sāļi"
  , e_number: "E473"
  , group: Emulsifier
  , source: [Animal]
  , description: ""
  , kosher: MostlyNotKosher
}

e474 :: ENumber
e474 = {
  name_english: "Sucroglycerides"
  , name_russian: "Сахароглицериды"
  , name_german: "Sucroglyceride"
  , name_hebrew: "סוכרוגליצרידים"
  , name_french: "Sucroglycérides"
  , name_latvian: "Sucroglicerīdi"
  , e_number: "E474"
  , group: Emulsifier
  , source: [Animal]
  , description: ""
  , kosher: MostlyNotKosher
}

e475 :: ENumber
e475 = {
  name_english: "Polyglycerol esters of fatty acids"
  , name_russian: "Эфиры полиглицеридов и жирных кислот"
  , name_german: "Polyglycerinester von Speisefettsäuren"
  , name_hebrew: "אצטט אצטרים של פוליגליצרול וחומצות שומן"
  , name_french: "Esters polyglycériques d'acides gras"
  , name_latvian: "Taukskābju poliglicerīdi"
  , e_number: "E475"
  , group: Emulsifier
  , source: [Animal]
  , description: ""
  , kosher: MostlyNotKosher
}

e476 :: ENumber
e476 = {
  name_english: "Polyglycerol polyricinoleate"
  , name_russian: "Эфиры полиглицерина взаимоэтерифицированных рициноловых кислот"
  , name_german: "Polyglycerinpolyricinoleat"
  , name_hebrew: "פוליגליצרול פוליריצינולאט"
  , name_french: "Polyricinoléate de polyglycérol"
  , name_latvian: "Poliglicerīna poliricinoleāts"
  , e_number: "E476"
  , group: Emulsifier
  , source: [Animal]
  , description: ""
  , kosher: MostlyNotKosher
}

e477 :: ENumber
e477 = {
  name_english: "Propylene glycol esters of fatty acids"
  , name_russian: "Эфиры пропиленгликоля и жирных кислот"
  , name_german: "Propylenglycolester von Speisefettsäuren"
  , name_hebrew: "אצטט אצטרים של פרופילן גליקול וחומצות שומן"
  , name_french: "Esters de propylèneglycol d'acides gras"
  , name_latvian: "Taukskābju propilēnglikola esteri"
  , e_number: "E477"
  , group: Emulsifier
  , source: [Animal]
  , description: ""
  , kosher: MostlyNotKosher
}

e478 :: ENumber
e478 = {
  name_english: "Lactylated fatty acid esters of glycerol and propane-1,2-diol"
  , name_russian: "Эфиры лактиловых жирных кислот глицерина и пропиленгликоля"
  , name_german: "Lactylierte Fettsäureester von Glycerin und Propan-1,2-diol"
  , name_hebrew: "אצטט אצטרים של חומצות שומן לקטיליזירות של גליצרול ופרופאן-1,2-דיול"
  , name_french: "Esters d'acides gras lactylés de glycérol et de propane-1,2-diol"
  , name_latvian: "Taukskābju laktīlēti glicerīna un propan-1,2-diola esteri"
  , e_number: "E478"
  , group: Emulsifier
  , source: [Animal, Dairy]
  , description: ""
  , kosher: MostlyNotKosher
}

e479b :: ENumber
e479b = {
  name_english: "Thermally oxidized soya bean oil interacted with mono- and diglycerides of fatty acids"
  , name_russian: "Термически окисленное соевое масло с моно- и диглицеридами жирных кислот"
  , name_german: "Thermooxidiertes Sojaöl mit Mono- und Diglyceriden von Speisefettsäuren"
  , name_hebrew: "שמן סויה חמים מחומצן באמצעות מונו- ודי גליצרידים של חומצות שומן"
  , name_french: "Huile de soja thermiquement oxydée en interaction avec des mono- et diglycérides d'acides gras"
  , name_latvian: "Termiski oksidēts sojas pupu eļļa mijiedarbojas ar taukskābju mono- un diglicerīdiem"
  , e_number: "E479"
  , group: Emulsifier
  , source: [Animal]
  , description: ""
  , kosher: MostlyNotKosher
}

e480 :: ENumber
e480 = {
  name_english: "Dioctyl sodium sulfosuccinate"
  , name_russian: "Диоктилнатриевый сульфосукцинат"
  , name_german: "Dioctyl-Natriumsulfosuccinat"
  , name_hebrew: "דיוקטיל נתריום סולפוסוקסינט"
  , name_french: "Dioctyl sulfosuccinate de sodium"
  , name_latvian: "Dioctyl nātrija sulfosukcināts"
  , e_number: "E480"
  , group: Emulsifier
  , source: [Synthetic]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e481 :: ENumber
e481 = {
  name_english : "Sodium lactylates"
  , name_russian : "Лактилаты натрия (Стеароиллактилат натрия, Олеиллактилат натрия)"
  , name_german : "Natriumlactylate"
  , name_hebrew : "לקטילטים של נתרן"
  , name_french : "Lactylates de sodium"
  , name_latvian : "Nātrija laktilāti"
  , e_number : "E481"
  , group : Emulsifier
  , source : [Dairy]
  , description : ""
  , kosher : MostlyNotKosher
}

e482 :: ENumber
e482 = {
  name_english: "Calcium lactylates"
  , name_russian: "Лактилаты кальция (Стеароиллактилат кальция, Олеиллактилат кальция)"
  , name_german: "Calciumlactylate"
  , name_hebrew: "לקטילטים של סידן"
  , name_french: "Lactylates de calcium"
  , name_latvian: "Kalcija laktilāti"
  , e_number : "E482"
  , group : Emulsifier
  , source : [Dairy]
  , description : ""
  , kosher : MostlyNotKosher
}

e483 :: ENumber
e483 = {
  name_english: "Stearyl tartrate"
  , name_russian: "Тартрат стеариловый"
  , name_german: "Stearyltartrat"
  , name_hebrew: "סטיאריל טרטרט"
  , name_french: "Tartrate de stéaryle"
  , name_latvian: "Steāra tartrāts"
  , e_number: "E483"
  , group: Emulsifier
  , source: [Animal]
  , description: ""
  , kosher: MostlyNotKosher
}

e484 :: ENumber
e484 = {
  name_english: "Stearyl citrate"
  , name_russian: "Цитрат стеариловый"
  , name_german: "Stearylcitrat"
  , name_hebrew: "סטיאריל ציטרט"
  , name_french: "Citrate de stéaryle"
  , name_latvian: "Steāra citrāts"
  , e_number: "E484"
  , group: Emulsifier
  , source: []
  , description: ""
  , kosher: MostlyNotKosher
}

e485 :: ENumber
e485 = {
  name_english: "Sodium stearoyl fumarate"
  , name_russian: "Натрий стеароилфумарат"
  , name_german: "Natriumstearoylfumarat"
  , name_hebrew: "נתרן סטיארויל פומרט"
  , name_french: "Stéaroyl fumarate de sodium"
  , name_latvian: "Nātrija stearoīl fumarāts"
  , e_number: "E485"
  , group: Emulsifier
  , source: []
  , description: ""
  , kosher: MostlyNotKosher
}

e486 :: ENumber
e486 = {
  name_english: "Calcium stearoyl fumarate"
  , name_russian: "Кальций стеароилфумарат"
  , name_german: "Calciumstearoylfumarat"
  , name_hebrew: "סטיארויל פומרט של סידן"
  , name_french: "Stéaroyl fumarate de calcium"
  , name_latvian: "Kalcija stearoīl fumarāts"
  , e_number: "E486"
  , group: Emulsifier
  , source: []
  , description: ""
  , kosher: MostlyNotKosher
}

e487 :: ENumber
e487 = {
  name_english: "Sodium laurylsulfate"
  , name_russian: "Лаурилсульфат натрия"
  , name_german: "Natriumlaurylsulfat"
  , name_hebrew: "לוריל סולפט נתריום"
  , name_french: "Laurylsulfate de sodium"
  , name_latvian: "Nātrija laurilsulfāts"
  , e_number: "E487"
  , group: Emulsifier
  , source: []
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e488 :: ENumber
e488 = {
  name_english: "Ethoxylated mono- and diglycerides"
  , name_russian: "Этоксилированные моно- и диглицериды"
  , name_german: "Ethoxilierte Mono- und Diglyceride"
  , name_hebrew: "מונו- ודי גליצרידים אתוקסילירות"
  , name_french: "Mono- et diglycérides éthoxylés"
  , name_latvian: "Etoxilēti mono- un diglicerīdi"
  , e_number: "E488"
  , group: Emulsifier
  , source: []
  , description: ""
  , kosher: MostlyNotKosher
}

e489 :: ENumber
e489 = {
  name_english: "Methyl glucoside-coconut oil ester"
  , name_russian: "Эфиры метилглюкозида и кокосового масла"
  , name_german: "Methylglucosid-Kokosöl-Ester"
  , name_hebrew: "מתיל גלוקוזיד- אסטר של שמן קוקוס"
  , name_french: "Ester de méthylglucoside et d'huile de noix de coco"
  , name_latvian: "Metilglukozīda un kokosriekstu eļļas esteri"
  , e_number: "E489"
  , group: Emulsifier
  , source: []
  , description: ""
  , kosher: MostlyNotKosher
}

e490 :: ENumber
e490 = {
  name_english: "Propane-1,2-diol"
  , name_russian: "Пропан-1,2-диол"
  , name_german: "Propan-1,2-diol"
  , name_hebrew: "פרופאן-1,2-דיול"
  , name_french: "Propane-1,2-diol"
  , name_latvian: "Propan-1,2-diols"
  , e_number: "E490"
  , group: Emulsifier
  , source: []
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e491 :: ENumber
e491 = {
  name_english: "Sorbitan monostearate Span 60"
  , name_russian: "Сорбитан моностеарат (СПЭН 60)"
  , name_german: "Sorbitanmonostearat Span 60"
  , name_hebrew: "סורביטן מונוסטיארט (ספאן 60)"
  , name_french: "Monostéarate de sorbitan Span 60"
  , name_latvian: "Sorbitāna monostearāts Span 60"
  , e_number: "E491"
  , group: Emulsifier
  , source: [Animal]
  , description: ""
  , kosher: MostlyNotKosher  
}

e492 :: ENumber
e492 = {
  name_english: "Sorbitan tristearate, Span 65"
  , name_russian: "Сорбитан тристеарат (СПЭН 65)"
  , name_german: "Sorbitantristearat Span 65"
  , name_hebrew: "סורביטן טריסטיארט (ספאן 65)"
  , name_french: "Tristéarate de sorbitan Span 65"
  , name_latvian: "Sorbitāna tristearāts Span 65"
  , e_number: "E492"
  , group: Emulsifier
  , source: [Animal]
  , description: ""
  , kosher: MostlyNotKosher
}

e493 :: ENumber
e493 = {
  name_english: "Sorbitan monolaurate, Span 20"
  , name_russian: "Сорбитан монолаурат (СПЭН 20)"
  , name_german: "Sorbitanmonolaurat Span 20"
  , name_hebrew: "סורביטן מונולאורט (ספאן 20)"
  , name_french: "Monolaurate de sorbitan Span 20"
  , name_latvian: "Sorbitāna monolaurāts Span 20"
  , e_number: "E493"
  , group: Emulsifier
  , source: [Animal]
  , description: ""
  , kosher: MostlyNotKosher
}

e494 :: ENumber
e494 = {
  name_english: "Sorbitan monooleate, Span 80"
  , name_russian: "Сорбитан моноолеат (СПЭН 80)"
  , name_german: "Sorbitanmonooleat Span 80"
  , name_hebrew: "סורביטן מונואוליאט (ספאן 80)"
  , name_french: "Monooléate de sorbitan Span 80"
  , name_latvian: "Sorbitāna monooleāts Span 80"
  , e_number: "E494"
  , group: Emulsifier
  , source: [Animal]
  , description: ""
  , kosher: MostlyNotKosher
}

e495 :: ENumber
e495 = {
  name_english: "Sorbitan monopalmitate, Span 40"
  , name_russian: "Сорбитан монопальмитат (СПЭН 40)"
  , name_german: "Sorbitanmonopalmitat Span 40"
  , name_hebrew: "סורביטן מונופלמיטט (ספאן 40)"
  , name_french: "Monopalmitate de sorbitan Span 40"
  , name_latvian: "Sorbitāna monopalmiāts Span 40"
  , e_number: "E495"
  , group: Emulsifier
  , source: [Animal]
  , description: ""
  , kosher: MostlyNotKosher
}

e496 :: ENumber
e496 = {
  name_english: "Sorbitantrioleat, Span 85"
  , name_russian: "Сорбитан триолеат (СПЭН 85)"
  , name_german: "Sorbitantrioleat Span 85"
  , name_hebrew: "סורביטן טריוליאט (ספאן 85)"
  , name_french: "Trioxyde de sorbitan Span 85"
  , name_latvian: "Sorbitāna trioīlāts Span 85"
  , e_number: "E496"
  , group: Emulsifier
  , source: [Animal]
  , description: ""
  , kosher: MostlyNotKosher
}

e497 :: ENumber
e497 = {
  name_english: "Polyoxypropylene-polyoxyethylene polymers"
  , name_russian: "Полиоксипропилен-полиоксиэтиленовые полимеры"
  , name_german: "Polyoxypropylen-Polyoxyethylen-Polymere"
  , name_hebrew: "פוליאוקסיפרופילן-פוליאוקסיאתילן פולימרים"
  , name_french: "Polymères de polyoxypropylène-polyoxyéthylène"
  , name_latvian: "Polioksipropilēna-polieoksietilēna polimēri"
  , e_number: "E497"
  , group: Emulsifier
  , source: []
  , description: ""
  , kosher: MostlyNotKosher
}

e498 :: ENumber
e498 = {
  name_english: "Partial polyglycerol esters of polycondensed fatty acids of castor oil"
  , name_russian: "Частичные полиглицериды эфиров поликонденсированных жирных кислот касторового масла"
  , name_german: "Teilweise Polyglycerinester von polykondensierten Fettsäuren von Rizinusöl"
  , name_hebrew: "אצטט אצטרים של פוליגליצרול חלקיים של חומצות שומן פוליקונדנסידות של שמן ריקינוס"
  , name_french: "Esters de polyglycérol partiellement condensés d'acides gras de l'huile de ricin"
  , name_latvian: "Daļēji poliglicerīnu esteri no polikondensētiem taukskābju rīcīna eļļas"
  , e_number: "E498"
  , group: Emulsifier
  , source: []
  , description: ""
  , kosher: MostlyNotKosher
}

e499 :: ENumber
e499 = {
  name_english: "Cassia gum, Stigmasterol-rich plant sterols"
  , name_russian: "Кассия камедь, стигмастерол-богатые растительные стерины"
  , name_german: "Cassia-Gum, Stigmasterol-reiche Pflanzensterine"
  , name_hebrew: "גאם קסיה, סטיגמסטרול עשיר בסטרולים צמחיים"
  , name_french: "Gomme de cassia, stigmastérols riches en stérols végétaux"
  , name_latvian: "Kasijas gumija, stigmastērolu bagāti augu steroli"
  , e_number: "E499"
  , group: Emulsifier
  , source: [Vegan]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}






































