
-- Thickeners, Stabilizers & Emulsifiers (400 - 499)

module Data.Nb400to499 (stabilizerENumberList) where

import Data.ENumberTypes (AdditiveGroup(..), ENumberList, Kashrut(..), Source(..), ENumber, emptyENumberList, insertEntry)

-- import Data.Number (e)

infixr 5 insertEntry as ++

stabilizerENumberList :: ENumberList
stabilizerENumberList =  e400 ++ e401 ++ e402 ++ e403 ++ e404 ++ e405 ++ e406 ++ e407 ++ e407a ++ e408 ++ e409 ++ e410 ++ e411 ++ e412 ++ e413 ++ e414 ++ e415 ++ e416 ++ e417 ++ e418 ++ e419 ++ e420 ++ e421 ++ e422 ++ e424 ++ e425 ++ e425a ++ e425b ++ e426 ++ e427 ++ e428 ++ e429 ++ e430 ++ e431 ++ e432 ++ e433 ++ e434 ++ e435 ++ e436 ++ e440a ++ e440b ++ e441 ++ e442 ++ e443 ++ e444 ++ e445 ++ e446 ++ e450a ++ e450b ++ e450c ++ e450d ++ e450d ++ e450e ++ e450f ++ e450g ++ e451a ++ e451b ++ e452a ++ e452b ++ e452c ++ e452d ++ e452e ++
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





























