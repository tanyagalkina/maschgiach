module Data.Head
 (findENumbersInList
 , seedENumberList
 ,showK
 , showKRussian
  , showKGerman
  , showKHebrew
  , showKFrench
  , showKLatvian
 , showSources
)
where

import Prelude

import CSS (query)
import Control.Comonad.Trans.Class (lower)
import Data.ENumberTypes (ENumber, ENumberList, Kashrut(..), Source(..))
import Data.Foldable (foldl)
import Data.Generic.Rep (to)
import Data.List (fromFoldable, filter, concat)
import Data.Nb100to199 (colorENumberList)
import Data.Nb200to299 (preservatENumberList)
import Data.Nb300to399 (antioxidantENumberList)
import Data.Nb400to499 (stabilizerENumberList)
import Data.Nb500to599 (regulatorENumberList)
import Data.Nb600to699 (flavourENumberList)
import Data.String.CodeUnits (contains)
import Data.String.Common (toLower)
import Data.String.Pattern (Pattern(..))
import Web.HTML.Event.EventTypes (offline)


showK :: Kashrut -> String
showK kashrut = case kashrut of
  NotKosher -> "Not Kosher!"
  KosherIncludingPassover -> "Kosher including Passover"
  KosherNeedPassoverHashgoho -> "Kosher, needs Hashgoho for Passover"
  UsuallyKosherRarelyNeedsHashgoho -> "Needs Hashgoho, usually kosher"
  OftenKosherNeedHashgoho -> "Needs Hashgoho, often kosher"
  NeedHashgohoWholeYear -> "Needs Hashgoho whole year"
  NeedHashgohoWholeYearSomeAllow -> "Needs Hashgoho whole year, some allow"
  KosherForbidden -> "Kosher, FORBIDDEN"
  IssuficientData -> "Insufficient data"

showKRussian :: Kashrut -> String
showKRussian kashrut = case kashrut of
  NotKosher -> "Не кашерно!"
  KosherIncludingPassover -> "Кашерно включая Песах"
  KosherNeedPassoverHashgoho -> "Кашерно, требуется хашгоха на Песах"
  UsuallyKosherRarelyNeedsHashgoho -> "Требуется хашгоха, обычно кашерно"
  OftenKosherNeedHashgoho -> "Требуется хашгоха, часто кашерно"
  NeedHashgohoWholeYear -> "Требуется хашгоха весь год"
  NeedHashgohoWholeYearSomeAllow -> "Требуется хашгоха весь год, некоторые разрешают"
  KosherForbidden -> "Кашерно, ЗАПРЕЩЕНО"
  IssuficientData -> "Недостаточно данных"

showKGerman :: Kashrut -> String
showKGerman kashrut = case kashrut of
  NotKosher -> "Nicht koscher!"
  KosherIncludingPassover -> "Koscher einschließlich Pessach"
  KosherNeedPassoverHashgoho -> "Koscher, benötigt Haschgoho für Pessach"
  UsuallyKosherRarelyNeedsHashgoho -> "Benötigt Haschgoho, normalerweise koscher"
  OftenKosherNeedHashgoho -> "Benötigt Haschgoho, oft koscher"
  NeedHashgohoWholeYear -> "Benötigt Haschgoho für das ganze Jahr"
  NeedHashgohoWholeYearSomeAllow -> "Benötigt Haschgocho für das ganze Jahr, einige erlauben"
  KosherForbidden -> "Koscher, VERBOTEN"
  IssuficientData -> "Unzureichende Daten"

showKHebrew :: Kashrut -> String
showKHebrew kashrut = case kashrut of
  NotKosher -> "לא כשר!"
  KosherIncludingPassover -> "כשר, כולל פסח"
  KosherNeedPassoverHashgoho -> "כשר, צריך השגחה לפסח"
  UsuallyKosherRarelyNeedsHashgoho -> "צריך השגחה, כשר בדרך כלל"
  OftenKosherNeedHashgoho -> "צריך השגחה, כשר לעיתים קרובות"
  NeedHashgohoWholeYear -> "צריר השגחה כל השנה"
  NeedHashgohoWholeYearSomeAllow -> "צריך השגחה כל השנה, יש שמתירים"
  KosherForbidden -> "כשר,אסור"
  IssuficientData -> "מידע לא מספיק"    


showKFrench :: Kashrut -> String
showKFrench kashrut = case kashrut of
  NotKosher -> "Pas cacher!"
  KosherIncludingPassover -> "Casher pour toute l'année, y compris Pessa'h (Pâque)"
  KosherNeedPassoverHashgoho -> "Casher pour toute l'année mais nécessite une surveillance spécifique pour Pessa'h (Pâque)"
  UsuallyKosherRarelyNeedsHashgoho -> "besoin de Hashgoho, généralement cacher"
  OftenKosherNeedHashgoho -> "Besoin de Hashgoho, souvent cacher"
  NeedHashgohoWholeYear -> "Nécessite une surveillance rabbinique toute l'année"
  NeedHashgohoWholeYearSomeAllow -> "Nécessite une surveillance rabbinique toute l'année, certains autorisent"
  KosherForbidden -> "Cacher, INTERDIT"
  IssuficientData -> "Données insuffisantes"

showKLatvian :: Kashrut -> String 
showKLatvian kashrut = case kashrut of
  NotKosher -> "Nav košers!"
  KosherIncludingPassover -> "Košers ieskaitot Pēsah"
  KosherNeedPassoverHashgoho -> "Košers, nepieciešama uzraudzība Pēsah laikā"
  UsuallyKosherRarelyNeedsHashgoho -> "Nepieciešama uzraudzība, parasti košers"
  OftenKosherNeedHashgoho -> "Nepieciešama uzraudzība, bieži košers"
  NeedHashgohoWholeYear -> "Nepieciešama uzraudzība visu gadu"
  NeedHashgohoWholeYearSomeAllow -> "Nepieciešama uzraudzība visu gadu, daži atļauj"
  KosherForbidden -> "Košers, AIZLIEGTS"  
  IssuficientData -> "Nepietiekami dati"

showSource :: Source -> String
showSource source = case source of
  Chametz -> "Chametz"
  Kitniyot -> "Kitniyot"
  Dairy -> "Dairy"
  Animal -> "Animal"
  Wine -> "Wine"
  Eggs -> "Eggs"
  Vegan -> "Vegan"
  Synthetic -> "Synthetic"
  Dangerous -> "Dangerous"
  Mushroom -> "Mushrooms"

showSources :: Array Source -> String
showSources arr = foldl (\acc x -> acc <> " " <> showSource x) "src: " arr

findENumbersInList :: String -> ENumberList
findENumbersInList query = filter filterEntry seedENumberList
  where filterEntry::ENumber -> Boolean
        filterEntry entry = 
          let 
            lowerQuery = toLower query
            containsIgnoreCase field = contains ( Pattern $ lowerQuery) (toLower field)
          in
              containsIgnoreCase entry.e_number
              || containsIgnoreCase entry.name_english
              || containsIgnoreCase entry.name_russian
              || containsIgnoreCase entry.name_german
              || containsIgnoreCase entry.name_hebrew
              || containsIgnoreCase entry.name_french
              || containsIgnoreCase entry.name_latvian

seedENumberList:: ENumberList
seedENumberList = concat $ fromFoldable 
  [colorENumberList
  , preservatENumberList
  , antioxidantENumberList
  , stabilizerENumberList
  , regulatorENumberList
  , flavourENumberList]