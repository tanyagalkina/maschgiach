
-- Thickeners, Stabilizers & Emulsifiers (400 - 499)

module Data.Nb400to499 (stabilizerENumberList) where


import Data.ENumberTypes (AdditiveGroup(..), ENumberList, Kashrut(..), Source(..), ENumber, emptyENumberList, insertEntry)

-- import Data.Number (e)

infixr 5 insertEntry as ++

stabilizerENumberList :: ENumberList
stabilizerENumberList =  e400 ++ e401 ++ e402 ++ e403 ++ e404 ++ e405 ++ e406 ++ e407 ++ e407a ++ e408 ++ e409 ++ e410 ++
   emptyENumberList

e400 :: ENumber
e400 = {
  name_english: "Alginic acid" 
  , name_russian: "Альгиновая кислота"
  , name_german: "Alginsäure"
  , name_hebrew: "אלגינט"
  , name_french: "Acide alginique"
  , name_latvian: "algīnskābe"
  
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
  , name_latvian: "nātrija algināts" 
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
  , name_latvian: "kālija algināts" 
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
  , name_latvian: "amonija algināts"
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
  , name_latvian: "kalcija algināts"
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
  , name_latvian: "propilēnglikola algināts"
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
  , name_latvian: "agar"
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
  , name_latvian: "karragināns"
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
  , name_latvian: "apstrādāta eucheuma jūras zāle"
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
  , name_latvian: "maizes rauga glikāns"
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
  , name_latvian: "arabinogalaktāns"
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
  , name_hebrew: "גארוב, גארוב גאם"
  , name_french: "Gomme de caroube"
  , name_latvian: "locust bean gum, carob gum"
  , e_number: "E410"
  , group: Emulsifier
  , source: [Vegan]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}


