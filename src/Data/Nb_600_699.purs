-- Flavour Enhancers 600-699

module Data.Nb600to699
  ( e620
  , flavourENumberList
  )
  where


import Data.ENumberTypes (AdditiveGroup(..), ENumber, ENumberList, Kashrut(..), Source(..), emptyENumberList, insertEntry)

-- import Data.Number (e)

infixr 5 insertEntry as ++

flavourENumberList :: ENumberList
flavourENumberList =  e620 ++ e621 ++ e622 ++ e623 ++ e624 ++ e625 ++ e626 ++ e627 ++ e628 ++ e629 ++ e630 ++ e631 ++ e632 ++ e633 ++ e634 ++ e635 ++ e636 ++ e637 ++ e640 ++ e641 ++ e650 ++
  emptyENumberList

e620 :: ENumber
e620 = {
  name_english: "Glutamic acid (L (+)-)"
  , name_russian: "Глютаминовая кислота (L (+)-)"
  , name_german: "L-Glutaminsäure"
  , name_hebrew: "L-חומצה גלוטמית"
  , name_french: "Acide L-glutamique"
  , name_latvian: "L-Glutamīnskābe"
  , e_number: "E620"
  , group: FlavourEnchancer 
  , source: [Chametz, Kitniyot]
  , description: ""
  , kosher: NeedHashgohoWholeYearSomeAllow
}

e621 :: ENumber
e621 = {
  name_english: "Monosodium glutamate"
  , name_russian: "Глютамат натрия"
  , name_german: "Mononatriumglutamat"
  , name_hebrew: "גלוטמט נתרי"
  , name_french: "Glutamate monosodique"
  , name_latvian: "Mononātrija glutamāts"
  , e_number: "E621"
  , group: FlavourEnchancer 
  , source: [Chametz, Kitniyot]
  , description: ""
  , kosher: NeedHashgohoWholeYearSomeAllow
}

e622 :: ENumber
e622 = {
  name_english: "Monopotassium glutamate"
  , name_russian: "Глютамат калия"
  , name_german: "Monokaliumglutamat"
  , name_hebrew: "גלוטמט אשלגן"
  , name_french: "Glutamate monopotassique"
  , name_latvian: "Monokālija glutamāts"
  , e_number: "E622"
  , group: FlavourEnchancer 
  , source: [Chametz, Kitniyot]
  , description: ""
  , kosher: NeedHashgohoWholeYearSomeAllow
}

e623 :: ENumber
e623 = {
  name_english: "Calcium diglutamate"
  , name_russian: "Глютамат кальция"
  , name_german: "Calciumdiglutamat"
  , name_hebrew: "סידן דיגלוטמט"
  , name_french: "Calcium diglutamate"
  , name_latvian: "Kalcija diglutamāts"
  , e_number: "E623"
  , group: FlavourEnchancer 
  , source: [Chametz, Kitniyot]
  , description: ""
  , kosher: NeedHashgohoWholeYearSomeAllow
}

e624 :: ENumber
e624 = {
  name_english: "Monoammonium glutamate"
  , name_russian: "Глютамат аммония"
  , name_german: "Monoammoniumglutamat"
  , name_hebrew: "גלוטמט אמוניום"
  , name_french: "Glutamate monoammonique"
  , name_latvian: "Monoamonija glutamāts"
  , e_number: "E624"
  , group: FlavourEnchancer 
  , source: []
  , description: ""
  , kosher: NeedHashgohoWholeYearSomeAllow
}

e625 :: ENumber
e625 = {
  name_english: "Magnesium diglutamate"
  , name_russian: "Глютамат магния"
  , name_german: "Magnesiumdiglutamat"
  , name_hebrew: "מגנזיום דיגלוטמט"
  , name_french: "Magnésium diglutamate"
  , name_latvian: "Magnija diglutamāts"
  , e_number: "E625"
  , group: FlavourEnchancer
  , source: []
  , description: ""
  , kosher: NeedHashgohoWholeYearSomeAllow
}

e626 :: ENumber
e626 = {
  name_english: "Guanylic acid"
  , name_russian: "Гуаниловая кислота"
  , name_german: "Guanylsäure"
  , name_hebrew: "גואנילית חומצה"
  , name_french: "Acide guanylique"
  , name_latvian: "Guanilskābe"
  , e_number: "E626"
  , group: FlavourEnchancer
  , source: []
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e627 :: ENumber
e627 = {
  name_english: "Disodium 5'-guanylate, Sodium guanylate"
  , name_russian: "5'-гуанилат натрия"
  , name_german: "Natriumguanylat"
  , name_hebrew: "גואנילט נתרן"
  , name_french: "Guanylate disodique"
  , name_latvian: "Nātrija guanilāts"
  , e_number: "E627"
  , group: FlavourEnchancer
  , source: [Animal, Chametz, Kitniyot]
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e628 :: ENumber
e628 = {
  name_english: "Dipotassium guanylate"
  , name_russian: "Гуанилат калия"
  , name_german: "Dikaliumguanylat"
  , name_hebrew: "גואנילט אשלגן"
  , name_french: "Guanylate dipotassique"
  , name_latvian: "Dikālija guanilāts"
  , e_number: "E628"
  , group: FlavourEnchancer
  , source: []
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e629 :: ENumber
e629 = {
  name_english: "Calcium 5'-guanylate"
  , name_russian: "5'-гуанилат кальция"
  , name_german: "Calciumguanylat"
  , name_hebrew: "גואנילט סידן"
  , name_french: "Guanylate de calcium"
  , name_latvian: "Kalcija guanilāts"
  , e_number: "E629"
  , group: FlavourEnchancer
  , source: []
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e630 :: ENumber
e630 = {
  name_english: "Inosinic acid"
  , name_russian: "Инозиновая кислота"
  , name_german: "Inosinsäure"
  , name_hebrew: "אינוזינית חומצה"
  , name_french: "Acide inosinique"
  , name_latvian: "Inozīnskābe"
  , e_number: "E630"
  , group: FlavourEnchancer
  , source: [Animal]
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e631 :: ENumber
e631 = {
  name_english: "Disodium inosinate"
  , name_russian: "Инозинат натрия"
  , name_german: "Natriuminosinat"
  , name_hebrew: "אינוזינט נתרן"
  , name_french: "Inosinate disodique"
  , name_latvian: "Nātrija inozināts"
  , e_number: "E631"
  , group: FlavourEnchancer
  , source: [Animal]
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e632 :: ENumber
e632 = {
  name_english: "Dipotassium inosinate"
  , name_russian: "Инозинат калия"
  , name_german: "Dikaliuminosinat"
  , name_hebrew: "אינוזינט אשלגן"
  , name_french: "Inosinate dipotassique"
  , name_latvian: "Dikālija inozināts"
  , e_number: "E632"
  , group: FlavourEnchancer
  , source: [Animal]
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e633 :: ENumber
e633 = {
  name_english: "Calcium inosinate"
  , name_russian: "Инозинат кальция"
  , name_german: "Calciuminosinat"
  , name_hebrew: "אינוזינט סידן"
  , name_french: "Inosinate de calcium"
  , name_latvian: "Kalcija inozināts"
  , e_number: "E633"
  , group: FlavourEnchancer
  , source: [Animal]
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e634 :: ENumber
e634 = {
  name_english: "Calcium 5'-ribonucleotides"
  , name_russian: "5'-рибонуклеотиды кальция"
  , name_german: "Calcium-5'-ribonucleotide"
  , name_hebrew: "סידן 5'-ריבונוקלאוטידים"
  , name_french: "Ribonucléotides de calcium 5'-"
  , name_latvian: "Kalcija 5'-ribonukleotīdi"
  , e_number: "E634"
  , group: FlavourEnchancer
  , source: []
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e635 :: ENumber
e635 = {
  name_english: "Disodium 5'-ribonucleotides"
  , name_russian: "5'-рибонуклеотиды натрия"
  , name_german: "Natrium-5'-ribonucleotide"
  , name_hebrew: "5'-ריבונוקלאוטידים נתרן"
  , name_french: "Ribonucléotides de sodium 5'-"
  , name_latvian: "Nātrija 5'-ribonukleotīdi"
  , e_number: "E635"
  , group: FlavourEnchancer
  , source: [Animal]
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e636 :: ENumber
e636 = {
  name_english: "Maltol"
  , name_russian: "Мальтол"
  , name_german: "Maltol"
  , name_hebrew: "מלטול"
  , name_french: "Maltol"
  , name_latvian: "Maltols"
  , e_number: "E636"
  , group: FlavourEnchancer
  , source: [Chametz, Kitniyot]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e637 :: ENumber
e637 = {
  name_english: "Ethyl maltol"
  , name_russian: "Этилмальтол"
  , name_german: "Ethylmaltol"
  , name_hebrew: "אתיל מלטול"
  , name_french: "Éthyl maltol"
  , name_latvian: "Etīlmaltols"
  , e_number: "E637"
  , group: FlavourEnchancer
  , source: [Chametz, Kitniyot, Wine]
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e640 :: ENumber
e640 = {
  name_english: "Glycine and its sodium salt"
  , name_russian: "Глицин и его натриевая соль"
  , name_german: "Glycin und sein Natriumsalz"
  , name_hebrew: "גליצין ומלח הנתרן שלו "
  , name_french: "Glycine et son sel de sodium"
  , name_latvian: "Glicīns un tā nātrija sāls"
  , e_number: "E640"
  , group: FlavourEnchancer
  , source: []
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e641 :: ENumber
e641 = {
  name_english: "L-leucine"
  , name_russian: "L-лейцин"
  , name_german: "L-Leucin"
  , name_hebrew: "L-ליאוצין"
  , name_french: "L-leucine"
  , name_latvian: "L-leucīns"
  , e_number: "E641"
  , group: FlavourEnchancer
  , source: []
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e650 :: ENumber
e650 = {
  name_english: "Zinc acetate"
  , name_russian: "Ацетат цинка"
  , name_german: "Zinkacetat"
  , name_hebrew: "חומצת צינק"
  , name_french: "Acétate de zinc"
  , name_latvian: "Cinka acetāts"
  , e_number: "E650"
  , group: FlavourEnchancer
  , source: []
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

