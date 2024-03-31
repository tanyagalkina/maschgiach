module Data.Head
 (findENumbersInList
 ,showK
 , showSources
  -- Source(
  -- Chametz,Kitniyot,Dairy,Animal,Wine,Eggs,Vegan,Synthetic, Dangerous)

)

-- Kashrut(NotKosher, KosherIncludingPassover, KosherNeedPassoverHashgoho, UsuallyKosherRarelyNeedHashgoho, OftenKosherNeedHashgoho, NeedHashgohoWholeYear, KosherForbidden), ENumber, ENumberList, insertEntry, findENumbers, findEntry, findEntryBySubstance, findEntryByENumber, showK, showSources) where

where

import Prelude

import Control.Plus (empty)
import Data.Array.NonEmpty (NonEmptyArray)
import Data.Array.NonEmpty as NEA
import Data.Foldable (foldl)
import Data.List (List(..), fromFoldable, filter, head, nubByEq, null, concat)
import Data.ENumberTypes (Kashrut(..), Source(..), ENumber, ENumberList, colorENumberList)
import Data.Maybe (Maybe(..))
import Data.Nb200to299 (preservatENumberList)
import Data.String.CodeUnits (contains)
import Data.String.Pattern (Pattern(..))


-- infixr 5 insertEntry as ++

-- data AdditiveGroup =  Colour | Preservative | Antioxidant | FlavourEnchancer | Sweetener | Emulsifier

-- data Kashrut = NotKosher    -- 0 – некашерна
--              | KosherIncludingPassover   --1 – обычно кашерна
--              | KosherNeedPassoverHashgoho -- 1 – обычно кашерна; требуется проверка na Pessach
--              | UsuallyKosherRarelyNeedHashgoho   -- 2 – обычно кашерна; в немногих случаях требуется проверка
--              | OftenKosherNeedHashgoho  -- 3 – часто бывает кашерной, но требуется проверка
--              | NeedHashgohoWholeYear -- 5 – требуется проверка в течение всего года
--              | KosherForbidden  -- 1

showK :: Kashrut -> String
showK kashrut = case kashrut of
  NotKosher -> "Not Kosher!"
  KosherIncludingPassover -> "Kosher including Passover"
  KosherNeedPassoverHashgoho -> "Kosher, needs Hashgoho for Passover"
  UsuallyKosherRarelyNeedHashgoho -> "Usually Kosher, rarely needs Hashgoho"
  OftenKosherNeedHashgoho -> "Often Kosher, needs Hashgoho"
  NeedHashgohoWholeYear -> "Needs Hashgoho whole year"
  KosherForbidden -> "Kosher, FORBIDDEN"

-- data Source = Chametz | Kitniyot | Dairy | Animal | Wine | Eggs | Vegan | Synthetic | Dangerous
-- derive instance eqSource :: Eq Source


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


-- type ENumber = {
--   name :: String
--   , e_number :: String
--   , group :: AdditiveGroup
--   , source :: Array Source  
--   , description :: String
--   , kosher :: Kashrut
-- }


-- type ENumberList = List ENumber

-- emptyENumberList:: ENumberList
-- emptyENumberList = empty


-- equivalent:: ENumber -> ENumber -> Boolean
-- equivalent a b = a.e_number == b.e_number

-- insertEntry :: ENumber -> ENumberList -> ENumberList
-- -- insertEntry entry list  = Cons entry list
-- insertEntry = Cons


-- findENumbers :: String -> ENumberList -> ENumberList
-- -- findEntryByENumberOrSubstance query = head <<< filter filterEntry
-- findENumbers query = filter filterEntry
--   where filterEntry::ENumber -> Boolean
--         filterEntry entry = contains (Pattern query) entry.e_number || contains (Pattern query) entry.name

findENumbersInList :: String -> ENumberList
findENumbersInList query = filter filterEntry seedENumberList
  where filterEntry::ENumber -> Boolean
        filterEntry entry = contains (Pattern query) entry.e_number || contains (Pattern query) entry.name

-- TODO: change this to search by part or one of the fields
-- findEntry :: String -> String -> ENumberList -> Maybe ENumber
-- findEntry e_number name = head <<< filter filterEntry
--   where filterEntry::ENumber -> Boolean
--         filterEntry entry = entry.e_number == e_number && entry.name == name


-- findEntryBySubstance :: String -> ENumberList -> Maybe ENumber
-- findEntryBySubstance substance = head <<< filter filterEntry
--   where filterEntry::ENumber -> Boolean
--         filterEntry entry = contains (Pattern substance)  (_.name entry)

-- findEntryByENumber :: String -> ENumberList -> Maybe ENumber
-- findEntryByENumber e_number = head <<< filter filterEntry
--   where filterEntry::ENumber -> Boolean
--         filterEntry entry = contains (Pattern e_number) entry.e_number


seedENumberList:: ENumberList
seedENumberList = concat $ fromFoldable [colorENumberList, preservatENumberList]