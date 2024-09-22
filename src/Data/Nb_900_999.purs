-- Miscellaneous (900-999)

module Data.Nb900to999 (sweetenerAndGlazingList) where

import Data.ENumberTypes (AdditiveGroup(..), ENumber, ENumberList, Kashrut(..), Source(..), emptyENumberList, insertEntry)

infixr 5 insertEntry as ++

sweetenerAndGlazingList :: ENumberList
sweetenerAndGlazingList = e900 ++ e901 ++ e902 ++ e903 ++ e904 ++ e905 ++ e905a ++ e905b ++ e905c ++ e906 ++ e907 ++ e908 ++ e909 ++ e910 ++ e911 ++ e912 ++ e913 ++ e914 ++ e915 ++ e916 ++ e917 ++ e918 ++ e919 ++ e920 ++ e921 ++ e922 ++ e923 ++ e924a ++ e924b ++ e925 ++ e926 ++ e927a ++ e927b ++ e928 ++ e929 ++ e930 ++ e938 ++ e939 ++ e940 ++ e941 ++ e942 ++ e943a ++ e943b ++ e944 ++ e945 ++ e946 ++ e947 ++ e948 ++ e949 ++ e950 ++ e951 ++ e952 ++ e953 ++ e954 ++ e955 ++ e956 ++ e957 ++ e958 ++ e959 ++ e960 ++ e961 ++ e962 ++ e965 ++ e966 ++ e967 ++ e968 ++ e999 ++
   emptyENumberList

e900 :: ENumber
e900 = {
  name_english: "Dimethyl polysiloxane"
, name_russian: "Полидиметилсилоксан"
, name_german: "Dimethylpolysiloxan"
, name_hebrew: "די-מתיקון"
, name_french: "Diméthylpolysiloxane"
, name_latvian: "Dimetilpolisiloksāns"
, e_number: "E900"
, group: AntiCakingAgent
, source: []
, description: ""
, kosher: KosherIncludingPassover
}

e901 :: ENumber
e901 = {
  name_english: "Beeswax"
, name_russian: "Пчелиный воск"
, name_german: "Bienenwachs"
, name_hebrew: "שעוות דבורים"
, name_french: "Cire d'abeille"
, name_latvian: "Bišu vasks"
, e_number: "E901"
, group: GlazingAgent
, source: []
, description: ""
, kosher: KosherNeedPassoverHashgoho
}

e902 :: ENumber
e902 = {
  name_english: "Candelilla wax"
, name_russian: "Воск свечной"
, name_german: "Kerzenwachs, Candelillawachs"
, name_hebrew: "שעוות נרות"
, name_french: "Cire de bougie, cire de candelilla"
, name_latvian: "Kandelilvasks"
, e_number: "E902"
, group: GlazingAgent
, source: []
, description: ""
, kosher: KosherIncludingPassover
}

e903 :: ENumber
e903 = {
  name_english: "Carnauba wax"
, name_russian: "Карнаубский воск"
, name_german: "Carnaubawachs"
, name_hebrew: "שעוות קרנאובה"
, name_french: "Cire de carnauba"
, name_latvian: "Karnaubvasks"
, e_number: "E903"
, group: GlazingAgent
, source: []
, description: ""
, kosher: KosherIncludingPassover
}

e904 :: ENumber
e904 = {
  name_english: "Shellac"
, name_russian: "Шеллак"
, name_german: "Schellack"
, name_hebrew: "שלק"
, name_french: "Shellac"
, name_latvian: "Šellaka"
, e_number: "E904"
, group: GlazingAgent
, source: []
, description: ""
, kosher: NotKosher 
}


e905 :: ENumber
e905 = {
  name_english: "Microcrystalline wax, Paraffins"
, name_russian: "Микрокристаллический воск, Парафины"
, name_german: "Mikrokristallines Wachs, Paraffine"
, name_hebrew: "שעוות מיקרוקריסטליניות, פרפינים"
, name_french: "Cire microcristalline, Paraffines"
, name_latvian: "Mikrokristāliskais vasks, Parafīni"
, e_number: "E905"
, group: None
, source: []
, description: ""
, kosher: UsuallyKosherRarelyNeedsHashgoho
}
e905a :: ENumber
e905a = {
  name_english: "Mineral oil, food grade"
, name_russian: "Минеральное масло, пищевое"
, name_german: "Mineralöl, Lebensmittelqualität"
, name_hebrew: "שמן מינרלי, דרגת מזון"
, name_french: "Huile minérale, qualité alimentaire"
, name_latvian: "Minerālu eļļa, pārtikas kvalitāte"
, e_number: "E905a"
-- add group Anti-Foaming agent
, group: None
, source: []
, description: ""
, kosher: UsuallyKosherRarelyNeedsHashgoho
}

e905b :: ENumber
e905b = {
  name_english: "Petrolatum"
, name_russian: "Вазелин"
, name_german: " Vaseline"
, name_hebrew: "ווזלין"
, name_french: "Vaseline"
, name_latvian: "Vazelīns" 
, e_number: "E905b"
, group: None
, source: []
, description: ""
, kosher: UsuallyKosherRarelyNeedsHashgoho
}

e905c :: ENumber
e905c = {
  name_english: "Petroleum wax (i)Microcrystalline wax (ii) Paraffin wax" 
, name_russian: "Нефтяной воск (i)Микрокристаллический воск (ii) Парафиновый воск"
, name_german: "Petroleumwachs (i)Mikrokristallines Wachs (ii) Paraffinwachs"
, name_hebrew: "שעוות נפט (i)שעוות מיקרוקריסטליניות (ii) שעוות פרפין"
, name_french: "Cire de pétrole (i)Cire microcristalline (ii) Cire de paraffine"
, name_latvian: "Naftas vasks (i)Mikrokristāliskais vasks (ii) Parafīna vasks"
, e_number: "E905c"
, group: GlazingAgent
, source: []
, description: ""
, kosher: UsuallyKosherRarelyNeedsHashgoho
}

e906 :: ENumber
e906 = {
  name_english: "Gum benzoic"
, name_russian: "Бензойная смола"
, name_german: "Benzoeharz"
, name_hebrew: "שרף בנזואין"
, name_french: "Résine benzoïque"
, name_latvian: "Benzoika vasks"
, e_number: "E906"
, group: FlavourEnchancer
, source: [Vegan]
, description: ""
, kosher: KosherIncludingPassover
}

-- TODO: check latvian
e907 :: ENumber
e907 = {
  name_english: "Crystalline wax"
, name_russian: "Кристаллический воск"
, name_german: "Kristallwachs"
, name_hebrew: "שעווה גבישית"
, name_french: "Cire cristalline"
, name_latvian: "Kristāliskais vasks, Hidrogenēts poli-1-decēns"
, e_number: "E907"
, group: GlazingAgent
, source: []
, description: ""
, kosher: UsuallyKosherRarelyNeedsHashgoho
}

e908 :: ENumber
e908 = {
  name_english: "Rice bran wax"
, name_russian: "Рисовый отрубной воск"
, name_german: "Reiskleiewachs"
, name_hebrew: "שעוות קליפת אורז"
, name_french: "Cire de son de riz"
, name_latvian: "Rīsu kliju vasks"
, e_number: "E908"
, group: GlazingAgent
, source: []
, description: ""
, kosher: NeedHashgohoWholeYear
}

e909 :: ENumber
e909 = {
  name_english: "Spermaceti wax"
, name_russian: "Спермацетовый воск"
, name_german: "Walrat"
, name_hebrew: "שעוות לוויתן"
, name_french: "Cire de cachalot"
, name_latvian: "Spermacetīna sveķi"
, e_number: "E909"
, group: GlazingAgent
, source: []
, description: ""
, kosher: NeedHashgohoWholeYear
}

e910 :: ENumber
e910 = {
  name_english: "Wax ester"
, name_russian: "Восковый эфир"
, name_german: "Wachsester"
, name_hebrew: "אתר שעווה"
, name_french: "Éther de cire"
, name_latvian: "Vaska ēteris"
, e_number: "E910"
, group: GlazingAgent
, source: [Animal]
, description: ""
, kosher: NeedHashgohoWholeYear
}

e911 :: ENumber
e911 = {
  name_english: "Methyl esters of fatty acids"
, name_russian: "Метиловые эфиры жирных кислот"
, name_german: "Fettsäuremethylester"
, name_hebrew: "אסטרים מתיליים של חומצות שומן"
, name_french: "Esters méthyliques d'acides gras"
, name_latvian: "Taukskābju metilesteri"
, e_number: "E911"
, group: GlazingAgent
, source: []
, description: ""
, kosher: NeedHashgohoWholeYear
}

e912 :: ENumber
e912 = {
  name_english: " Montan acid esters"
, name_russian: "Монтановые кислотные эфиры"
, name_german: "Montansäureester"
, name_hebrew: "אסטרי חומצה מונטן"
, name_french: "Esters d'acide montanique"
, name_latvian: "Montānskābes esteri"
, e_number: "E912"
, group: GlazingAgent
, source: [Dangerous]
, description: ""
, kosher: NeedHashgohoWholeYear
}

e913 :: ENumber
e913 = {
  name_english: "Lanolin, sheep wool grease"
, name_russian: "Ланолин, овечий шерстяной жир"
, name_german: "Lanolin, Schafwollfett"
, name_hebrew: "לנולין, שמן צמר כבש"
, name_french: "Lanoline, graisse de laine de mouton"
, name_latvian: "Lanolīns, aitu vilnas tauki"
, e_number: "E913"
, group: GlazingAgent
, source: []
, description: ""
, kosher: NeedHashgohoWholeYearSomeAllow
}


e914 :: ENumber
e914 = {
  name_english: "Oxidized polyethylene wax"
, name_russian: "Окисленный полиэтиленовый воск"
, name_german: "Oxidiertes Polyethylenwachs"
, name_hebrew: "שעוות פוליאתילן מחמצן"
, name_french: "Cire de polyéthylène oxydée"
, name_latvian: "Oksidēti polietilēna sveķi"
, e_number: "E914"
, group: GlazingAgent
, source: []
, description: ""
, kosher: KosherIncludingPassover
}

e915 :: ENumber
e915 = {
  name_english: "Esters of colophony"
, name_russian: "Эфиры сосны"
, name_german: "Ester von Kiefer"
, name_hebrew: "אסטרים של עץ אורן"
, name_french: "Esters de pin"
, name_latvian: "Priežu esteri, kolofonija esteris"
, e_number: "E915"
, group: GlazingAgent
, source: [Vegan]
, description: ""
, kosher: KosherNeedPassoverHashgoho
}

e916 :: ENumber
e916 = {
  name_english: "Calcium iodate"
, name_russian: "Иодат кальция"
, name_german: "Calciumiodat"
, name_hebrew: "יודט סידן"
, name_french: "Iodate de calcium"
, name_latvian: "Kalcija jodāts"
, e_number: "E916"
, group: None
, source: []
, description: ""
, kosher: KosherForbidden
}

e917 :: ENumber
e917 = {
  name_english: "Potassium iodate"
, name_russian: "Иодат калия"
, name_german: "Kaliumiodat"
, name_hebrew: "יודט פוטסיום"
, name_french: "Iodate de potassium"
, name_latvian: "Kālija jodāts"
, e_number: "E917"
, group: None
, source: []
, description: ""
, kosher: KosherForbidden
}

e918 :: ENumber
e918 = {
  name_english: "Nitrogen oxides"
, name_russian: "Оксиды азота"
, name_german: "Stickoxide"
, name_hebrew: "תחמוצות חנקן"
, name_french: "Oxydes d'azote"
, name_latvian: "Slāpekļa oksīdi"
, e_number: "E918"
, group: None
, source: []
, description: ""
, kosher: KosherForbidden
}

e919 :: ENumber
e919 = {
  name_english: "Nitrosyl chloride"
, name_russian: "Хлорид нитрозила"
, name_german: "Nitrosylchlorid"
, name_hebrew: "כלוריד ניטרוזיל"
, name_french: "Chlorure de nitrosyle"
, name_latvian: "Nitrozila hlorīds"
, e_number: "E919"
, group: None
, source: []
, description: ""
, kosher: KosherForbidden
}

e920 :: ENumber
e920 = {
  name_english: "L-cysteine hydrochloride"
, name_russian: "Л-цистеин и его натриевая и калиевая соли"
, name_german: "L-Cystein"
, name_hebrew: "L-ציסטאין"
, name_french: "L-cystéine"
, name_latvian: "L-Cisteīns"
, e_number: "E920"
-- TODO: add group: Improving agent
, group: None
, source: [Animal]
, description: ""
, kosher: NeedHashgohoWholeYear
}

e921 :: ENumber
e921 = {
  name_english: "L-cystine hydrochloride monohydrate"
, name_russian: "Л-цистин и его натриевая и калиевая соли"
, name_german: "L-Cystin"
, name_hebrew: "L-ציסטין"
, name_french: "L-cystine"
, name_latvian: "L-Cistīns"
, e_number: "E921"
-- TODO: add group: Improving agent
, group: None
, source: [Animal]
, description: ""
, kosher: NeedHashgohoWholeYear
}

e922 :: ENumber
e922 = {
  name_english: "Potassium persulfate"
, name_russian: "Персульфат калия"
, name_german: "Kaliumperoxodisulfat"
, name_hebrew: "פרסולפט אשלגן"
, name_french: "Persulfate de potassium"
, name_latvian: "Kālija persulfāts"
, e_number: "E922"
-- TODO: add group: Improving agent
, group: None
, source: []
, description: ""
, kosher: KosherForbidden
}

e923 :: ENumber
e923 = {
  name_english: "Ammonium persulfate"
, name_russian: "Персульфат аммония"
, name_german: "Ammoniumpersulfat"
, name_hebrew: "פרסולפט אמוניום"
, name_french: "Persulfate d'ammonium"
, name_latvian: "Amonija persulfāts"
, e_number: "E923"
-- TODO: add group: Improving agent
, group: None
, source: []
, description: ""
, kosher: KosherForbidden
}

e924a :: ENumber
e924a = {
  name_english: "Potassium bromate"
, name_russian: "Бромат калия"
, name_german: "Kaliumbromat"
, name_hebrew: "ברומאט אשלגן"
, name_french: "Bromate de potassium"
, name_latvian: "Kālija bromāts"
, e_number: "E924"
-- TODO: add group: Improving agent
, group: None
, source: []
, description: ""
, kosher: KosherIncludingPassover
}

e924b :: ENumber
e924b = {
  name_english: "Calcium bromate"
, name_russian: "Бромат кальция"
, name_german: "Calciumbromat"
, name_hebrew: "ברומאט סידן"
, name_french: "Bromate de calcium"
, name_latvian: "Kalcija bromāts"
, e_number: "E924"
-- TODO: add group: Improving agent
, group: None
, source: []
, description: ""
, kosher: KosherIncludingPassover
}

e925 :: ENumber
e925 = {
  name_english: "Chlorine"
, name_russian: "Хлор"
, name_german: "Chlor"
, name_hebrew: "כלור"
, name_french: "Chlore"
, name_latvian: "Hlors"
, e_number: "E925"
, group: None
, source: []
, description: ""
, kosher: KosherForbidden
}

e926 :: ENumber
e926 = {
  name_english: "Chlorine dioxide"
, name_russian: "Диоксид хлора"
, name_german: "Chlordioxid"
, name_hebrew: "דו-תחמוצת הכלור"
, name_french: "Dioxyde de chlore"
, name_latvian: "Hlora dioksīds"
, e_number: "E926"
, group: None
, source: []
, description: ""
, kosher: KosherForbidden
}

e927a :: ENumber
e927a = {
  name_english: "Azodicakarbonamide, Azo-formmid, Azodicarboxilic acid, Azobisformamide"
, name_russian: "Азодикарбонамид, Азоформамид, Азодикарбоксилическая кислота, Азобисформамид"
, name_german: "Azodicarbonamid, Azoformamid, Azodicarbonsäure, Azobisformamid"
, name_hebrew: "אזודיקרבונמיד, אזו-פורמיד, חומצת אזודיקרבוקסילית, אזוביספורממיד"
, name_french: "Azodicarbonamide, Azoformamide, Acide azodicarboxylique, Azobisformamide"
, name_latvian: "Azodikarbonamīds, Azoformamīds, Azodikarboksilskābe, Azobisformamīds"
, e_number: "E927a"
-- TODO: add group: Improving agent
, group: None
, source: []
, description: ""
, kosher: KosherIncludingPassover
}

e927b :: ENumber
e927b = {
  name_english: "Carbamide (Urea)"
, name_russian: "Карбамид"
, name_german: "Harnstoff"
, name_hebrew: "קרבמיד,שתנן "
, name_french: "Urée"
, name_latvian: "Karbamīds"
, e_number: "E927b"
-- TODO: add group: Improving agent
, group: None
, source: []
, description: ""
, kosher: KosherIncludingPassover
}

e928 :: ENumber
e928 = {
  name_english: "Benzoyl peroxide"
, name_russian: "Пероксид бензоила"
, name_german: "Benzoylperoxid"
, name_hebrew: "פרוקסיד בנזויל"
, name_french: "Peroxyde de benzoyle"
, name_latvian: "Benzilperoksīds"
, e_number: "E928"
, group: None
, source: []
, description: ""
, kosher: KosherIncludingPassover
}

e929 :: ENumber
e929 = {
  name_english: "Acetone peroxide"
, name_russian: "Пероксид ацетона"
, name_german: "Acetonperoxid"
, name_hebrew: "פרוקסיד אצטון"
, name_french: "Peroxyde d'acétone"
, name_latvian: "Acetona peroksīds"
, e_number: "E929"
, group: None
, source: []
, description: ""
, kosher: KosherForbidden
}

e930 :: ENumber
e930 = {
  name_english: "Calcium peroxide"
, name_russian: "Пероксид кальция"
, name_german: "Calciumperoxid"
, name_hebrew: "פרוקסיד סידן"
, name_french: "Peroxyde de calcium"
, name_latvian: "Kalcija peroksīds"
, e_number: "E930"
, group: None
, source: []
, description: ""
, kosher: KosherIncludingPassover
}

e938 :: ENumber
e938 = {
  name_english: "Argon"
, name_russian: "Аргон"
, name_german: "Argon"
, name_hebrew: "ארגון"
, name_french: "Argon"
, name_latvian: "Argons"
, e_number: "E938"
, group: PackagingGas
, source: []
, description: ""
, kosher: KosherIncludingPassover
}

e939 :: ENumber
e939 = {
  name_english: "Helium"
, name_russian: "Гелий"
, name_german: "Helium"
, name_hebrew: "הליום"
, name_french: "Hélium"
, name_latvian: "Hēlijs"
, e_number: "E939"
, group: PackagingGas
, source: []
, description: ""
, kosher: KosherIncludingPassover
}

e940 :: ENumber
e940 = {
  name_english: "	Dichlorodifluoromethane"
, name_russian: "Дихлордифторметан"
, name_german: "Dichlordifluormethan"
, name_hebrew: "דיכלורודיפלורומתן"
, name_french: "Dichlorodifluorométhane"
, name_latvian: "Dihlordifluormetāns"
, e_number: "E940"
, group: PackagingGas
, source: []
, description: ""
, kosher: KosherIncludingPassover
}

e941 :: ENumber
e941 = {
name_english: "Nitrogen"
, name_russian: "Азот"
, name_german: "Stickstoff"
, name_hebrew: "חנקן"
, name_french: "Azote"
, name_latvian: "Slāpeklis"
, e_number: "E941"
-- TODO:  add group propellant
, group: None
, source: []
, description: ""
, kosher: KosherIncludingPassover
}

e942 :: ENumber
e942 = {
  name_english: "Nitrous oxide"
, name_russian: "Диазомонооксил"
, name_german: "Distickstoffmonooxid"
, name_hebrew: "חנקן חמצני"
, name_french: "Protoxyde d'azote"
, name_latvian: "Slāpekļa oksīds"
, e_number: "E942"
-- TODO:  add group propellant
, group: None
, source: []
, description: ""
, kosher: KosherIncludingPassover
}

e943a :: ENumber
e943a = {
  name_english: "Butane"
, name_russian: "Бутан"
, name_german: "Butan"
, name_hebrew: "בוטאן"
, name_french: "Butane"
, name_latvian: "Butāns"
, e_number: "E943a"
-- TODO:  add group propellant
, group: None
, source: []
, description: ""
, kosher: KosherIncludingPassover
}

e943b :: ENumber
e943b = {
  name_english: "Isobutane"
, name_russian: "Изобутан"
, name_german: "Isobutan"
, name_hebrew: "איזובוטאן"
, name_french: "Isobutane"
, name_latvian: "Izobutāns"
, e_number: "E943b"
-- TODO:  add group propellant
, group: None
, source: []
, description: ""
, kosher: KosherIncludingPassover
}

e944 :: ENumber
e944 = {
  name_english: "Propane"
, name_russian: "Пропан"
, name_german: "Propan"
, name_hebrew: "פרופאן"
, name_french: "Propane"
, name_latvian: "Propāns"
, e_number: "E944"
-- TODO:  add group propellant
, group: None
, source: []
, description: ""
, kosher: KosherIncludingPassover
}

e945 :: ENumber
e945 = {
  name_english: "Chloropentafluoroethane"
, name_russian: "Хлорпентафторэтан"
, name_german: "Chlorpentafluorethan"
, name_hebrew: "כלורפנטפלורואתן"
, name_french: "Chloropentafluoroéthane"
, name_latvian: "Hlorpentafluoretāns"
, e_number: "E945"
-- TODO:  add group propellant
, group: None
, source: []
, description: ""
, kosher: KosherIncludingPassover
}

e946 :: ENumber
e946 =  {
  name_english: "Octafluorocyclobutane"
, name_russian: "Октафторциклобутан"
, name_german: "Octafluorcyclobutan"
, name_hebrew: "אוקטפלורוציקלובוטן"
, name_french: "Octafluorocyclobutane"
, name_latvian: "Oktafluorciklobutāns"
, e_number: "E946"
-- TODO:  add group propellant
, group: None
, source: []
, description: ""
, kosher: KosherIncludingPassover
}

e947 :: ENumber
e947 = {
  name_english: "Hydrogen"
, name_russian: "Водород"
, name_german: "Wasserstoff"
, name_hebrew: "מימן"
, name_french: "Hydrogène"
, name_latvian: "Ūdeņradis"
, e_number: "E947"
, group: PackagingGas
, source: []
, description: ""
, kosher: KosherIncludingPassover
}

e948 :: ENumber
e948 = {
  name_english: "Oxygen"
, name_russian: "Кислород"
, name_german: "Sauerstoff"
, name_hebrew: "חמצן"
, name_french: "Oxygène"
, name_latvian: "Skābeklis"
, e_number: "E948"
, group: PackagingGas
, source: []
, description: ""
, kosher: KosherIncludingPassover
}

e949 :: ENumber
e949 = {
  name_english: "Hydrogen"
, name_russian: "Водород"
, name_german: "Wasserstoff"
, name_hebrew: "מימן"
, name_french: "Hydrogène"
, name_latvian: "Ūdeņradis"
, e_number: "E947"
, group: PackagingGas
, source: []
, description: ""
, kosher: KosherIncludingPassover
}

e950 :: ENumber
e950 = {
  name_english: "Acesulfame potassium"
, name_russian: "Ацесульфам калия"
, name_german: "Acesulfam-Kalium"
, name_hebrew: "אשלגן אצסולפאם"
, name_french: "Acésulfame de potassium"
, name_latvian: "Acesulfāms kālijs, Acesulfāms K"
, e_number: "E950"
, group: Sweetener
, source: [Chametz]
, description: ""
, kosher: KosherNeedPassoverHashgoho
}

e951 :: ENumber
e951 = {
  name_english: "Aspartame"
, name_russian: "Аспартам"
, name_german: "Aspartam"
, name_hebrew: "אספרטם"
, name_french: "Aspartame"
, name_latvian: "Aspartāms"
, e_number: "E951"
, group: Sweetener
, source: []
, description: ""
, kosher: OftenKosherNeedHashgoho
}

e952 :: ENumber
e952 = {
  name_english: "Cyclamic acid and its Na-, K- and Ca- salts, Cyclamates"
, name_russian: "Цикламовая кислота и ее соли натрия, калия и кальция, Цикламаты"
, name_german: "Cyclaminsäure und ihre Na-, K- und Ca-Salze, Cyclamate"
, name_hebrew: "חומצת סיקלמית ומלחיה של נתרן, פוטסיום וסידן, סיקלמטים"
, name_french: "Acide cyclamique et ses sels Na-, K- et Ca-, Cyclamates"
, name_latvian: "Ciklamīnskābe, Nātrija ciklamāts, Kalcija ciklamāts"
, e_number: "E952"
, group: Sweetener
, source: []
, description: ""
, kosher: KosherNeedPassoverHashgoho
}

e953 :: ENumber
e953 = {
  name_english: "Isomalt, Isomaltitol"
, name_russian: "Изомальт"
, name_german: "Isomalt"
, name_hebrew: "איזומלט"
, name_french: "Isomalt"
, name_latvian: "Izomalts"
, e_number: "E953"
, group: Sweetener
, source: []
, description: ""
, kosher: KosherNeedPassoverHashgoho
}

e954 :: ENumber
e954 = {
  name_english: "Saccharin and its sodium, potassium and calcium salts"
, name_russian: "Сахарин и его соли натрия, калия и кальция"
, name_german: "Saccharin und seine Na-, K- und Ca-Salze"
, name_hebrew: "סכרין ומלחיו של נתרן, פוטסיום וסידן"
, name_french: "Saccharine et ses sels Na-, K- et Ca-"
, name_latvian: "Saharīns, Saharīna nātrija sāls, Saharīna kalcija sāls, Saharīna kālija sāls"
, e_number: "E954"
, group: Sweetener
, source: []
, description: ""
, kosher: KosherNeedPassoverHashgoho
}

e955 :: ENumber
e955 = {
  name_english: "Sucralose (Trichlorogalactosucrose)"
, name_russian: "Сукралоза (Трихлоргалактозукроза)"
, name_german: "Sucralose (Trichlorogalactosucrose)"
, name_hebrew: "סוקרלוז (טריכלורוגלקטוזוסוקרוז)"
, name_french: "Sucralose (Trichlorogalactosucrose)"
, name_latvian: "Sukraloze"
, e_number: "E955"
, group: Sweetener
, source: []
, description: ""
, kosher: KosherNeedPassoverHashgoho
}

e956 :: ENumber
e956 = {
  name_english: "Alitame"
  , name_russian: "Алитам"
  , name_german: "Alitam"
  , name_hebrew: "אליטאם"
  , name_french: "Alitame"
  , name_latvian: "Alitāms"
  , e_number: "E956"
  , group: Sweetener
  , source: []
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e957 :: ENumber
e957 = {
  name_english: "Thaumatin"
, name_russian: "Тауматин"
, name_german: "Thaumatin"
, name_hebrew: "תאומטין"
, name_french: "Thaumatine"
, name_latvian: "Taumatīns"
, e_number: "E957"
, group: FlavourEnchancer
, source: []
, description: ""
, kosher: KosherNeedPassoverHashgoho
}

e958 :: ENumber
e958 = {
  name_english: "Glycyrrhizin"
, name_russian: "Глициризин"
, name_german: "Glycyrrhizin"
, name_hebrew: "גליציריזין"
, name_french: "Glycyrrhizine"
, name_latvian: "Glicirizīns"
, e_number: "E958"
, group: FlavourEnchancer
, source: []
, description: ""
, kosher: KosherNeedPassoverHashgoho
}

e959 :: ENumber
e959 = {
  name_english: "Neohesperidine dihydrochalcone"
, name_russian: "Неогесперидин дигидрохалкон"
, name_german: "Neohesperidin dihydrochalcon"
, name_hebrew: "נאוהספרידין דיהידרוחלקון"
, name_french: "Néohespéridine dihydrochalcone"
, name_latvian: "Neohesperidīns DC"
, e_number: "E959"
, group: FlavourEnchancer
, source: []
, description: ""
, kosher: KosherNeedPassoverHashgoho
}


-- TODO: check latvian
e960 :: ENumber
e960 = {
  name_english: "Steviol glycosides"
, name_russian: "Гликозиды стевиола"
, name_german: "Steviolglycoside"
, name_hebrew: "גליקוזידי סטביול"
, name_french: "Glycosides de stéviol"
, name_latvian: "Stevioglikozīdi"
, e_number: "E960"
, group: Sweetener
, source: []
, description: ""
, kosher: KosherNeedPassoverHashgoho
}

e961 :: ENumber
e961 = {
  name_english: "	Neotame"
, name_russian: "Неотам"
, name_german: "Neotam"
, name_hebrew: "נאוטאם"
, name_french: "Néotame"
, name_latvian: "Neotams"
, e_number: "E961"
, group: Sweetener
, source: []
, description: ""
, kosher: KosherNeedPassoverHashgoho
}

e962 :: ENumber
e962 = {
  name_english: "Aspartame-acesulfame salt"
, name_russian: "Соль аспартама-асесульфама"
, name_german: "Aspartam-Acesulfamsalz"
, name_hebrew: "מלח אספרטם-אצסולפאם"
, name_french: "Sel d'aspartame-acesulfame"
, name_latvian: "Aspartāma-acesulfāma sāls"
, e_number: "E962"
, group: Sweetener
, source: []
, description: ""
, kosher: NeedHashgohoWholeYear
}

e965 :: ENumber
e965 = {
  name_english: "Maltitol, Maltitol syrup"
, name_russian: "Мальтит и мальтитный сироп"
, name_german: "Maltit, Maltitsirup"
, name_hebrew: "מלטיטול, סירופ מלטיטול"
, name_french: "Maltitol, sirop de maltitol"
, name_latvian: "Maltīts, maltīta sīrups"
, e_number: "E965"
, group: Sweetener
, source: [Chametz]
, description: ""
, kosher: KosherNeedPassoverHashgoho
}

e966 :: ENumber
e966 = {
  name_english: "Lactitol"
, name_russian: "Лактит"
, name_german: "Lactit"
, name_hebrew: "לקטיטול"
, name_french: "Lactitol"
, name_latvian: "Laktīts"
, e_number: "E966"
, group: Sweetener
, source: [Dairy]
, description: ""
, kosher: NeedHashgohoWholeYear
}

e967 :: ENumber
e967 = {
  name_english: "Xylitol"
, name_russian: "Ксилит"
, name_german: "Xylit"
, name_hebrew: "קסיליטול"
, name_french: "Xylitol"
, name_latvian: "Ksilīts"
, e_number: "E967"
, group: Sweetener
, source: []
, description: ""
, kosher: KosherNeedPassoverHashgoho
}

e968 :: ENumber
e968 = {
  name_english: "Erythritol"
, name_russian: "Эритрит"
, name_german: "Erythrit"
, name_hebrew: "אריתריטול"
, name_french: "Érythritol"
, name_latvian: "Eritirols"
, e_number: "E968"
, group: Sweetener
, source: []
, description: ""
, kosher: KosherNeedPassoverHashgoho
}

e999 :: ENumber
e999 = {
  name_english: "Quillaia extract"
, name_russian: "Экстракт квиллайи" 
, name_german: "Quillajaextrakt"
, name_hebrew: "תמצית קווילאיה"
, name_french: "Extrait de quillaja"
, name_latvian: "Kvilaja ekstrakts"
, e_number: "E999"
, group: Sweetener
, source: []
, description: ""
, kosher: KosherIncludingPassover
}