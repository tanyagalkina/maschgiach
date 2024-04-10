module Data.Head
 (findENumbersInList
 ,showK
 , showSources
)
where

import Prelude

import Data.ENumberTypes (Kashrut(..), Source(..), ENumber, ENumberList)
import Data.Foldable (foldl)
import Data.List (fromFoldable, filter, concat)
import Data.Nb100to199 (colorENumberList)
import Data.Nb200to299 (preservatENumberList)
import Data.Nb300to399 (antioxidantENumberList)
import Data.Nb400to499 (stabilizerENumberList)
import Data.Nb500to599 (regulatorENumberList)
import Data.Nb600to699 (flavourENumberList)
import Data.String.CodeUnits (contains)
import Data.String.Pattern (Pattern(..))


showK :: Kashrut -> String
showK kashrut = case kashrut of
  NotKosher -> "Not Kosher!"
  KosherIncludingPassover -> "Kosher including Passover"
  KosherNeedPassoverHashgoho -> "Kosher, needs Hashgoho for Passover"
  UsuallyKosherRarelyNeedHashgoho -> "Usually Kosher, rarely needs Hashgoho"
  OftenKosherNeedHashgoho -> "Often Kosher, needs Hashgoho"
  NeedHashgohoWholeYear -> "Needs Hashgoho whole year"
  KosherForbidden -> "Kosher, FORBIDDEN"

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
        filterEntry entry = contains (Pattern query) entry.e_number || contains (Pattern query) entry.name_english
         || contains (Pattern query) entry.name_russian
           || contains (Pattern query) entry.name_german
             || contains (Pattern query) entry.name_hebrew
               || contains (Pattern query) entry.name_french
                || contains (Pattern query) entry.name_latvian

seedENumberList:: ENumberList
seedENumberList = concat $ fromFoldable 
  [colorENumberList
  , preservatENumberList
  , antioxidantENumberList
  , stabilizerENumberList
  , regulatorENumberList
  , flavourENumberList]