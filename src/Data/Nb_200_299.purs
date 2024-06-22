-- Preservatives (200-299)

module Data.Nb200to299
  ( (++)
  , e201
  , preservatENumberList
  )
  where


-- import Affjax.RequestHeader (name)

import Data.ENumberTypes (AdditiveGroup(..), ENumberList, Kashrut(..), Source(..), ENumber, emptyENumberList, insertEntry)

-- import Data.Number (e)

infixr 5 insertEntry as ++

preservatENumberList :: ENumberList
preservatENumberList = e200 ++ e201 ++ e202 ++ e203 ++ e209 ++ e210 ++ e211 ++ e212 ++ e213 ++ e214 ++ e215 ++ e216 ++ e217 ++ e218 ++ e219 ++ e220 ++ e221 ++ e222 ++ e223 ++ e224 ++ e225 ++ e226 ++ e227 ++ e228 ++ e230 ++ e231 ++ e232 ++ e233 ++ e234 ++ e235 ++ e236 ++ e237 ++ e238 ++ e239 ++ e240 ++ e242 ++ e249 ++ e250 ++ e251 ++ e252 ++
  emptyENumberList

-- seed data ---
e200 ∷ ENumber
e200 = {
  name_english: "Sorbic acid"
  , name_russian: "Сорбиновая кислота"
  , name_german: "Sorbinsäure"
  , name_hebrew: "חומצה סורבית"
  , name_french: "Acide sorbique"
  , name_latvian: "Sorbīnskābe"
  , e_number: "E200"
  , group: Preservative
  , source: [Chametz, Kitniyot]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e201 ∷ ENumber
e201 = {
  name_english: "Sodium sorbate"
  , name_russian: "Сорбат натрия"
  , name_german: "Natriumsorbat"
  , name_hebrew: "סורבט נתרן"
  , name_french: "Sorbate de sodium"
  , name_latvian: "Nātrija sorbāts"
  , e_number: "E201"
  , group: Preservative
  , source: [Chametz, Kitniyot]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e202 :: ENumber
e202 = {
  name_english: "Potassium sorbate"
  , name_russian: "Сорбат калия"
  , name_german: "Kaliumsorbat"
  , name_hebrew: "סורבט קליום"
  , name_french: "Sorbate de potassium"
  , name_latvian: "Kālija sorbāts"
  , e_number: "E202"
  , group: Preservative
  , source: [Chametz, Kitniyot]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e203 ::ENumber
e203 = {
  name_english: "Calcium sorbate"
  , name_russian: "Сорбат кальция"
  , name_german: "Calciumsorbat"
  , name_hebrew: "סורבט סידן"
  , name_french: "Sorbate de calcium"
  , name_latvian: "Kalcija sorbāts"
  , e_number: "E203"
  , group: Preservative
  , source: [Chametz, Kitniyot]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho  
}

e209 :: ENumber
e209 = {
  name_english: "Heptyl p-hydroxybezoate, Heptylparaben"
  , name_russian: "Гептилпарабен"
  , name_german: "Heptylparaben"
  , name_hebrew: "הפטיל פרבן"
  , name_french: "Heptylparaben"
  , name_latvian: "Heptilparabens"
  , e_number: "E209"
  , group: Preservative
  , source: []
  , description: ""
  , kosher: KosherNeedPassoverHashgoho  
}

e210 :: ENumber
e210 = {
  name_english: "Benzoic acid"
  , name_russian: "Бензойная кислота"
  , name_german: "Benzosäure"
  , name_hebrew: "חומצה בנזואית"
  , name_french: "Acide benzoïque"
  , name_latvian: "Benzojkskābe"
  , e_number: "E210"
  , group: Preservative
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover 
}

e211 :: ENumber
e211 = {
  name_english: "Sodium bentoate"
  , name_russian: "Бензойнокислый натрий, Бензоат натрия"
  , name_german: "Natriumbenzoat"
  , name_hebrew: "בנזואט נתרן"
  , name_french: "Benzoate de sodium"
  , name_latvian: "Nātrija benzoāts"
  , e_number: "E211"
  , group: Preservative
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e212 :: ENumber
e212 = {
  name_english: "Potassium benzoate"
  , name_russian: "Бензойнокислый калий, Бензоат калия"
  , name_german: "Kaliumbenzoat"
  , name_hebrew: "בנזואט קליום"
  , name_french: "Benzoate de potassium"
  , name_latvian: "Kālija benzoāts"
  , e_number: "E212"
  , group: Preservative
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e213 :: ENumber
e213 = {
  name_english: "Calcium benzoate"
  , name_russian: "Бензойнокислый кальций, Бензоат кальция"
  , name_german: "Calciumbenzoat"
  , name_hebrew: "בנזואט סידן"
  , name_french: "Benzoate de calcium"
  , name_latvian: "Kalcija benzoāts"
  , e_number: "E213"
  , group: Preservative
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e214 :: ENumber
e214 = {
  name_english: "Ethyl p-hydroxybenzoate"
  , name_russian: "Этиловый эфир парагидро-кси-бензойной кислоты"
  , name_german: "Ethyl-p-hydroxybenzoat"
  , name_hebrew: "אתיל פרבן"
  , name_french: "Ethyl p-hydroxybenzoate"
  , name_latvian: "Etilp-hidroksibenzoāts"
  , e_number: "E214"
  , group: Preservative
  , source: []
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e215 :: ENumber
e215 = {
  name_english: "Sodium ethyl p-hydroxybenzoate"
  , name_russian: "Натриевая соль этилового эфира пара-гидрокси-бензойной кислоты"
  , name_german: "pHB-Ester-Natrium-Ethyl-Verbindung"
  , name_hebrew: "אתיל פרבן נתרן"
  , name_french: "Ethyl p-hydroxybenzoate de sodium"
  , name_latvian: "Nātrija etilp-hidroksibenzoāts"
  , e_number: "E215"
  , group: Preservative
  , source: []
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e216 :: ENumber
e216 = {
  name_english: "Propyl para-hydroxybenzoate"
  , name_russian: "Пропиловый эфир, пара-гидрокси-бензойной кислоты"
  , name_german: "Propyl-p-hydroxybenzoat"
  , name_hebrew: "פרופיל פרבן"
  , name_french: "Propyl p-hydroxybenzoate"
  , name_latvian: "Propilp-hidroksibenzoāts"
  , e_number: "E216"
  , group: Preservative
  , source: []
  , description: ""
  , kosher: UsuallyKosherRarelyNeedsHashgoho
}

e217 :: ENumber
e217 = {
  name_english: "Sodium propyl para-hydroxybenzoate"
  , name_russian: "Натриевая соль пропилового эфира пара-гидрокси-бензойной кислоты"
  , name_german: "Propyl-p-hydroxybenzoat-Natrium-Verbindung"
  , name_hebrew: "פרופיל פרבן נתרן"
  , name_french: "Propyl p-hydroxybenzoate de sodium"
  , name_latvian: "Nātrija propilp-hidroksibenzoāts"
  , e_number: "E217"
  , group: Preservative
  , source: []
  , description: ""
  , kosher: UsuallyKosherRarelyNeedsHashgoho
}

e218 :: ENumber
e218 = {
  name_english: "Methyl para-hydroxybenzoate"
  , name_russian: "Метиловый эфир, пара-гидрокси-бензойной кислоты"
  , name_german: "Methyl-p-hydroxybenzoat"
  , name_hebrew: "מתיל פרבן"
  , name_french: "Methyl p-hydroxybenzoate"
  , name_latvian: "Metilp-hidroksibenzoāts"
  , e_number: "E218"
  , group: Preservative
  , source: []
  , description: ""
  , kosher: UsuallyKosherRarelyNeedsHashgoho
}

e219 :: ENumber
e219 = {
  name_english: "Sodium methyl para-hydroxybenzoate"
  , name_russian: "Натриевая соль метилового эфира пара-гидрокси-бензойной кислоты"
  , name_german: "Methyl-p-hydroxybenzoat-Natrium-Verbindung"
  , name_hebrew: "מתיל פרבן נתרן"
  , name_french: "Methyl p-hydroxybenzoate de sodium"
  , name_latvian: "Nātrija metilp-hidroksibenzoāts"
  , e_number: "E219"
  , group: Preservative
  , source: []
  , description: ""
  , kosher: NeedHashgohoWholeYearSomeAllow
}

e220 :: ENumber
e220 = {
  name_english: "Sulfur dioxide"
  , name_russian: "Диоксид серы"
  , name_german: "Schwefeldioxid"
  , name_hebrew: "דו-חמצן גפרית"
  , name_french: "Dioxyde de soufre"
  , name_latvian: "Sēra dioksīds"
  , e_number: "E220"
  , group: Preservative
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e221 :: ENumber
e221 = {
  name_english: "Sodium sulfite"
  , name_russian: "Сульфит натрия"
  , name_german: "Natriumsulfit"
  , name_hebrew: "סולפיט נתרן"
  , name_french: "Sulfite de sodium"
  , name_latvian: "Nātrija sulfits"
  , e_number: "E221"
  , group: Preservative
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e222 :: ENumber
e222 = {
  name_english: "Sodium hydrogen sulfite, Sodium bisulphate; Acid sodium sulphite "
  , name_russian: "Гидросульфит натрия"
  , name_german: "Natriumhydrogensulfit"
  , name_hebrew: "סולפיט הידרוגן נתרן"
  , name_french: "Hydrogénosulfite de sodium"
  , name_latvian: "Nātrija hidrogēnsulfits"
  , e_number: "E222"
  , group: Preservative
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e223 :: ENumber
e223 = {
  name_english: "Sodium metabisulfite (Disodium pyrosulphite)"
  , name_russian: "Метабисульфит натрия"
  , name_german: "Natriummetabisulfit"
  , name_hebrew: "מטה סולפיט נתרן"
  , name_french: "Métabisulfite de sodium"
  , name_latvian: "Nātrija metabisulfīts"
  , e_number: "E223"
  , group: Preservative
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e224 :: ENumber
e224 = {
  name_english: "Potassium metabisulfite (Potassium pyrosulphite)"
  , name_russian: "Метабисульфит калия"
  , name_german: "Kaliummetabisulfit"
  , name_hebrew: "מטה סולפיט קליום"
  , name_french: "Métabisulfite de potassium"
  , name_latvian: "Kālija metabisulfīts"
  , e_number: "E224"
  , group: Preservative
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e225 :: ENumber
e225 = {
  name_english: "Potassium sulfite"
  , name_russian: "Сульфит калия"
  , name_german: "Kaliumsulfit"
  , name_hebrew: "סולפיט קליום"
  , name_french: "Sulfite de potassium"
  , name_latvian: "Kālija sulfits"
  , e_number: "E225"
  , group: Preservative
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e226 :: ENumber
e226 = {
  name_english: "Calcium sulfite"
  , name_russian: "Сульфит кальция"
  , name_german: "Calciumsulfit"
  , name_hebrew: "סולפיט סידן"
  , name_french: "Sulfite de calcium"
  , name_latvian: "Kalcija sulfits"
  , e_number: "E226"
  , group: Preservative
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e227 :: ENumber
e227 = {
  name_english: "Calcium hydrogen sulfite (Calcium bisulphite)"
  , name_russian: "Гидросульфит кальция"
  , name_german: "Calciumhydrogensulfit"
  , name_hebrew: "סולפיט הידרוגן סידן"
  , name_french: "Hydrogénosulfite de calcium"
  , name_latvian: "Kalcija hidrogēnsulfits"
  , e_number: "E227"
  , group: Preservative
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e228 :: ENumber
e228 = {
  name_english: "Potassium hydrogen sulfite"
  , name_russian: "Гидросульфит калия"
  , name_german: "Kaliumhydrogensulfit"
  , name_hebrew: "סולפיט הידרוגן קליום"
  , name_french: "Hydrogénosulfite de potassium"
  , name_latvian: "Kālija hidrogēnsulfits"
  , e_number: "E228"
  , group: Preservative
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}

e230 :: ENumber
e230 = {
  name_english: "Biphenyl, Diphenyl"
  , name_russian: "Дифенил, Бифенил"
  , name_german: "Biphenyl"
  , name_hebrew: "ביפניל"
  , name_french: "Biphényle"
  , name_latvian: "Bifenils"
  , e_number: "E230"
  , group: Preservative
  , source: [Dangerous]
  , description: ""
  , kosher: KosherIncludingPassover
}

e231 :: ENumber
e231 = {
  name_english: "Orthophenyl phenol, 2-hydroxybiphenyl, Orthophenol"
  , name_russian: "Орто-фенилфенол, Ортофенол"
  , name_german: "Orthophenylphenol"
  , name_hebrew: "אורתופניל פנול"
  , name_french: "Orthophénylphénol"
  , name_latvian: "Ortofenilfenols"
  , e_number: "E231"
  , group: Preservative
  , source: [Dangerous]
  , description: ""
  , kosher: KosherIncludingPassover
}

e232 :: ENumber
e232 = {
  name_english: "Sodium orthophenyl phenol"
  , name_russian: "Орто-фенилфенолят натрия"
  , name_german: "Natriumorthophenylphenol"
  , name_hebrew: "אורתופניל פנול נתרן"
  , name_french: "Orthophénylphénol de sodium"
  , name_latvian: "Nātrija ortofenilfenols"
  , e_number: "E232"
  , group: Preservative
  , source: [Dangerous]
  , description: ""
  , kosher: KosherIncludingPassover
}

e233 :: ENumber
e233 = {
  name_english: "Thiabendazole, Omnizole, Tribenzole"
  , name_russian: "Тиабендазол"
  , name_german: "Thiabendazol"
  , name_hebrew: "תיאבנדזול"
  , name_french: "Thiabendazole"
  , name_latvian: "Tiabendazols"
  , e_number: "E233"
  , group: Preservative
  , source: []
  , description: ""
  , kosher: KosherIncludingPassover
}


e234 :: ENumber
e234 = {
  name_english: "Nisin"
  , name_russian: "Низин"
  , name_german: "Nisin"
  , name_hebrew: "ניסין"
  , name_french: "Nisine"
  , name_latvian: "Nizīns"
  , e_number: "E234"
  , group: Preservative
  , source: [Dairy]
  , description: ""
  , kosher: NeedHashgohoWholeYear
}

e235 :: ENumber
e235 = {
  name_english: "Natamycin, Pimaracin"
  , name_russian: "Пимарицин, намицин"
  , name_german: "Natamycin"
  , name_hebrew: "נטמיצין"
  , name_french: "Natamycine"
  , name_latvian: "Natamicīns"
  , e_number: "E235"
  , group: Preservative
  , source: [Mushroom]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e236 :: ENumber
e236 = {
  name_english: "Formic acid"
  , name_russian: "Муравьиная кислота"
  , name_german: "Ameisensäure"
  , name_hebrew: "חומצה נמלית"
  , name_french: "Acide formique"
  , name_latvian: "Formiķskābe"
  , e_number: "E236"
  , group: Preservative
  , source: []
  , description: ""
  , kosher: UsuallyKosherRarelyNeedsHashgoho
}

e237 :: ENumber
e237 = {
  name_english: "Sodium formate"
  , name_russian: "Формиат натрия"
  , name_german: "Natriumformiat"
  , name_hebrew: "פורמט נתרן"
  , name_french: "Formiate de sodium"
  , name_latvian: "Nātrija formiāts"
  , e_number: "E237"
  , group: Preservative
  , source: []
  , description: ""
  , kosher: UsuallyKosherRarelyNeedsHashgoho
}

e238 :: ENumber
e238 = {
  name_english: "Calcium formate"
  , name_russian: "Формиат кальция"
  , name_german: "Calciumformiat"
  , name_hebrew: "פורמט סידן"
  , name_french: "Formiate de calcium"
  , name_latvian: "Kalcija formiāts"
  , e_number: "E238"
  , group: Preservative
  , source: []
  , description: ""
  , kosher: UsuallyKosherRarelyNeedsHashgoho
}

e239 :: ENumber
e239 = {
  name_english: "Hexamethylene tetramine, Hexamine"
  , name_russian: "Гексаметилентетрамин, уротропин"
  , name_german: "Hexamethylentetramin"
  , name_hebrew: "הקסמתילן טטרמין"
  , name_french: "Hexaméthylène tétramine"
  , name_latvian: "Heksametilentetramīns"
  , e_number: "E239"
  , group: Preservative
  , source: [Dangerous]
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e240 :: ENumber
e240 = {
  name_english: "Formaldehyde"
  , name_russian: "Формальдегид"
  , name_german: "Formaldehyd"
  , name_hebrew: "פורמלדהיד"
  , name_french: "Formaldéhyde"
  , name_latvian: "Formaldehīds"
  , e_number: "E240"
  , group: Preservative
  , source: []
  , description: ""
  , kosher: KosherForbidden
}

e242 :: ENumber
e242 = {
  name_english: "Dimethyl dicarbonate"
  , name_russian: "Диметил дикарбонат"
  , name_german: "Dimethyldicarbonat"
  , name_hebrew: "דימתיל דיקרבונט"
  , name_french: "Dicarbonate de diméthyle"
  , name_latvian: "Dimetildikarbonāts"
  , e_number: "E242"
  , group: Preservative
  , source: []
  , description: ""
  , kosher: KosherNeedPassoverHashgoho
}

e249 :: ENumber
e249 = {
  name_english: "Potassium nitrite"
  , name_russian: "Нитрит калия"
  , name_german: "Kaliumnitrit"
  , name_hebrew: "ניטריט קליום"
  , name_french: "Nitrite de potassium"
  , name_latvian: "Kālija nitrits"
  , e_number: "E249"
  , group: Preservative
  , source: []
  , description: ""
  , kosher: NeedHashgohoWholeYearSomeAllow
}

e250 :: ENumber
e250 = {
  name_english: "Sodium nitrite"
  , name_russian: "Нитрит натрия"
  , name_german: "Natriumnitrit"
  , name_hebrew: "ניטריט נתרן"
  , name_french: "Nitrite de sodium"
  , name_latvian: "Nātrija nitrits"
  , e_number: "E250"
  , group: Preservative
  , source: []
  , description: ""
  , kosher: NeedHashgohoWholeYearSomeAllow
}

e251 :: ENumber
e251 = {
  name_english: "Sodium nitrate"
  , name_russian: "Нитрат натрия"
  , name_german: "Natriumnitrat"
  , name_hebrew: "ניטרט נתרן"
  , name_french: "Nitrate de sodium"
  , name_latvian: "Nātrija nitrāts"
  , e_number: "E251"
  , group: Preservative
  , source: []
  , description: ""
  , kosher: UsuallyKosherRarelyNeedsHashgoho
}

e252 :: ENumber
e252 = {
  name_english: "Potassium nitrate"
  , name_russian: "Нитрат калия"
  , name_german: "Kaliumnitrat"
  , name_hebrew: "ניטרט קליום"
  , name_french: "Nitrate de potassium"
  , name_latvian: "Kālija nitrāts"
  , e_number: "E252"
  , group: Preservative
  , source: []
  , description: ""
  , kosher: UsuallyKosherRarelyNeedsHashgoho
}






