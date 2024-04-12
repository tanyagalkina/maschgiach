module Data.Head
 (findENumbersInList
 ,showK
 , showSources
)
where

import Prelude

import CSS (query)
import Control.Comonad.Trans.Class (lower)
import Data.ENumberTypes (Kashrut(..), Source(..), ENumber, ENumberList)
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