
-- Thickeners, Stabilizers & Emulsifiers (400 - 499)

module Data.Nb400to499 (stabilizerENumberList) where

import Data.ENumberTypes (AdditiveGroup(..), ENumberList, Kashrut(..), Source(..), ENumber, emptyENumberList, insertEntry)

-- import Data.Number (e)

infixr 5 insertEntry as ++

stabilizerENumberList :: ENumberList
stabilizerENumberList =  e400 ++ e401 ++ e402 ++ e403 ++ e404 ++ e405 ++ e406 ++ e407 ++ e407a ++ e408 ++ e409 ++ e410 ++ e411 ++ e412 ++ e413 ++ e414 ++ e415 ++ e416 ++ e417 ++ e418 ++ e419 ++ e420 ++ e421 ++ e422 ++ e424 ++ e425 ++ e425a ++ e425b ++ e426 ++ e427 ++ e428 ++ e429 ++
   emptyENumberList

e400 :: ENumber
e400 = {
  name_english: "Alginic acid" 
  , name_russian: "Альгиновая кислота"
  , name_german: "Alginsäure"
  , name_hebrew: "אלגינט"
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
  , name_french: "Gomme de xanthane"
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











