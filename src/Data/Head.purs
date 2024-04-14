module Data.Head
 (findENumbersInList
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
  UsuallyKosherRarelyNeedHashgoho -> "Usually Kosher, rarely needs Hashgoho"
  OftenKosherNeedHashgoho -> "Often Kosher, needs Hashgoho"
  NeedHashgohoWholeYear -> "Needs Hashgoho whole year"
  KosherForbidden -> "Kosher, FORBIDDEN"

showKRussian :: Kashrut -> String
showKRussian kashrut = case kashrut of
  NotKosher -> "Не кашерно!"
  KosherIncludingPassover -> "Кашерно включая Песах"
  KosherNeedPassoverHashgoho -> "Кашерно, требуется хашгоха на Песах"
  UsuallyKosherRarelyNeedHashgoho -> "Обычно кашерно, редко требуется хашгоха"
  OftenKosherNeedHashgoho -> "Часто кашерно, требуется хашгоха"
  NeedHashgohoWholeYear -> "Требуется хашгоха весь год"
  KosherForbidden -> "Кашерно, ЗАПРЕЩЕНО"

showKGerman :: Kashrut -> String
showKGerman kashrut = case kashrut of
  NotKosher -> "Nicht koscher!"
  KosherIncludingPassover -> "Koscher einschließlich Pessach"
  KosherNeedPassoverHashgoho -> "Koscher, benötigt Hashgoho für Pessach"
  UsuallyKosherRarelyNeedHashgoho -> "Normalerweise koscher, benötigt selten Hashgoho"
  OftenKosherNeedHashgoho -> "Oft koscher, benötigt Hashgoho"
  NeedHashgohoWholeYear -> "Benötigt Haschgocho für das ganze Jahr"
  KosherForbidden -> "Koscher, VERBOTEN"

showKHebrew :: Kashrut -> String
showKHebrew kashrut = case kashrut of
  NotKosher -> "לא כשר!"
  KosherIncludingPassover -> "כשר כולל פסח"
  KosherNeedPassoverHashgoho -> "כשר, צריך השגחה לפסח"
  UsuallyKosherRarelyNeedHashgoho -> "צריך השגחה, כשר בדרך כלל"
  OftenKosherNeedHashgoho -> "כשר בדרך כלל, צריך השגחה"
  NeedHashgohoWholeYear -> "צריר השגחה כל השנה"
  KosherForbidden -> "כשר,אסור"    

showKFrench :: Kashrut -> String
showKFrench kashrut = case kashrut of
  NotKosher -> "Pas cacher!"
  KosherIncludingPassover -> "Casher pour toute l'année, y compris Pessa'h (Pâque)"
  KosherNeedPassoverHashgoho -> "Casher pour toute l'année mais nécessite une surveillance spécifique pour Pessa'h (Pâque)"
  UsuallyKosherRarelyNeedHashgoho -> "Généralement cacher, rarement besoin de Hashgoho"
  OftenKosherNeedHashgoho -> "Souvent cacher, besoin de Hashgoho"
  NeedHashgohoWholeYear -> "Nécessite une surveillance rabbinique toute l'année"
  KosherForbidden -> "Cacher, INTERDIT"

showKLatvian :: Kashrut -> String
showKLatvian kashrut = case kashrut of
  NotKosher -> "Nav košers!"
  KosherIncludingPassover -> "Košers ieskaitot Pēsah"
  KosherNeedPassoverHashgoho -> "Košers, nepieciešama uzraudzība Pēsah laikā"
  UsuallyKosherRarelyNeedHashgoho -> "Parasti košers, reti nepieciešama uzraudzība"
  OftenKosherNeedHashgoho -> "Bieži košers, nepieciešama uzraudzība"
  NeedHashgohoWholeYear -> "Nepieciešama uzraudzība visu gadu"
  KosherForbidden -> "Košers, AIZLIEGTS"  

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