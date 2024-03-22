module Data.ListEnglish (findENumbersInList, AdditiveGroup, Source(
  Chametz,Kitniyot,Dairy,Animal,Wine,Eggs,Vegan,Synthetic, Dangerous

), 
Kashrut(NotKosher, KosherIncludingPassover, KosherNeedPassoverHashgoho, UsuallyKosherRarelyNeedHashgoho, OftenKosherNeedHashgoho, NeedHashgohoWholeYear, KosherForbidden), ENumber, ENumberList, insertEntry, removeDiplicates, findENumbers, findEntry, findEntryBySubstance, findEntryByENumber, showK, showSources) where

import Prelude

import Control.Plus (empty)
import Data.Array.NonEmpty (NonEmptyArray)
import Data.Array.NonEmpty as NEA
import Data.List (List(..), filter, head, nubByEq, null)
import Data.Maybe (Maybe(..))
import Data.String.CodeUnits (contains)
import Data.String.Pattern (Pattern(..))
import Data.Foldable (foldl)


infixr 5 insertEntry as ++

data AdditiveGroup =  Colour | Preservative | Antioxidant | FlavourEnchancer | Sweetener | Emulsifier

data Kashrut = NotKosher    -- 0 – некашерна
             | KosherIncludingPassover   --1 – обычно кашерна
             | KosherNeedPassoverHashgoho -- 1 – обычно кашерна; требуется проверка na Pessach
             | UsuallyKosherRarelyNeedHashgoho   -- 2 – обычно кашерна; в немногих случаях требуется проверка
             | OftenKosherNeedHashgoho  -- 3 – часто бывает кашерной, но требуется проверка
             | NeedHashgohoWholeYear -- 5 – требуется проверка в течение всего года
             | KosherForbidden  -- 1

showK :: Kashrut -> String
showK kashrut = case kashrut of
  NotKosher -> "Not Kosher!"
  KosherIncludingPassover -> "Kosher including Passover"
  KosherNeedPassoverHashgoho -> "Kosher, needs Hashgoho for Passover"
  UsuallyKosherRarelyNeedHashgoho -> "Usually Kosher, rarely needs Hashgoho"
  OftenKosherNeedHashgoho -> "Often Kosher, needs Hashgoho"
  NeedHashgohoWholeYear -> "Needs Hashgoho whole year"
  KosherForbidden -> "Kosher, FORBIDDEN"

data Source = Chametz | Kitniyot | Dairy | Animal | Wine | Eggs | Vegan | Synthetic | Dangerous
derive instance eqSource :: Eq Source


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


type ENumber = {
  name :: String
  , e_number :: String
  , group :: AdditiveGroup
  , source :: Array Source  
  , description :: String
  , kosher :: Kashrut
}


type ENumberList = List ENumber

emptyENumberList:: ENumberList
emptyENumberList = empty


equivalent:: ENumber -> ENumber -> Boolean
equivalent a b = a.e_number == b.e_number

removeDiplicates:: ENumberList -> ENumberList
removeDiplicates list | null list  = empty
                      | otherwise = nubByEq equivalent list

insertEntry :: ENumber -> ENumberList -> ENumberList
-- insertEntry entry list  = Cons entry list
insertEntry = Cons


findENumbers :: String -> ENumberList -> ENumberList
-- findEntryByENumberOrSubstance query = head <<< filter filterEntry
findENumbers query = filter filterEntry
  where filterEntry::ENumber -> Boolean
        filterEntry entry = contains (Pattern query) entry.e_number || contains (Pattern query) entry.name

findENumbersInList :: String -> ENumberList
findENumbersInList query = filter filterEntry seedENumberList
  where filterEntry::ENumber -> Boolean
        filterEntry entry = contains (Pattern query) entry.e_number || contains (Pattern query) entry.name

-- TODO: change this to search by part or one of the fields
findEntry :: String -> String -> ENumberList -> Maybe ENumber
findEntry e_number name = head <<< filter filterEntry
  where filterEntry::ENumber -> Boolean
        filterEntry entry = entry.e_number == e_number && entry.name == name


findEntryBySubstance :: String -> ENumberList -> Maybe ENumber
findEntryBySubstance substance = head <<< filter filterEntry
  where filterEntry::ENumber -> Boolean
        filterEntry entry = contains (Pattern substance)  (_.name entry)

findEntryByENumber :: String -> ENumberList -> Maybe ENumber
findEntryByENumber e_number = head <<< filter filterEntry
  where filterEntry::ENumber -> Boolean
        filterEntry entry = contains (Pattern e_number) entry.e_number


seedENumberList:: ENumberList
seedENumberList = e100 ++ e101 ++ e102 ++ e104 ++ e110 ++ e120
  ++ e121 ++ e123 ++ e124 ++ e129 ++ e131 ++ e140 ++ e141 ++ e150a
  ++ emptyENumberList

-- seed data ---
e100 ∷ ENumber
e100 = {
  name: "Curcumin"
  , e_number: "E100"
  , group: Colour
  , source: [Vegan]
  , description: "Yellow colouring"
  , kosher: KosherIncludingPassover
}

e101 ∷ ENumber
e101 = {
  name: "Riboflavin"
  , e_number: "E101"
  , group: Colour
  , source: [Dairy, Animal, Chametz]
  , description: "Yellow colouring"
  , kosher: KosherNeedPassoverHashgoho
}

e102 ∷ ENumber
e102 = {
  name: "Tartrazine"
  , e_number: "E102"
  , group: Colour
  , source: [] 
  , description: "Yellow colouring"
  , kosher: KosherIncludingPassover
}

e104 ∷ ENumber
e104 = {
  name: "Quinoline Yellow"
  , e_number: "E104"
  , group: Colour
  , source: []
  , description: "Yellow colouring"
  , kosher: KosherIncludingPassover
}

e110 ∷ ENumber
e110 = {
  name: "Sunset Yellow FCF, Orange Yellow S"
  , e_number: "E110"
  , group: Colour
  , source: [Synthetic] 
  , description: "Orange colouring"
  , kosher: KosherIncludingPassover
}

e120 :: ENumber
e120 = {
  name: "Cochineal"
  , e_number: "E120"
  , group: Colour
  , source: [Animal]
  , description: "Red colouring, Carmine of cochineal, Carminic Acid"
  , kosher: NotKosher
}

e121 :: ENumber
e121 = {
  name: "Citrus Red Nr.2"
  , e_number: "E121"
  , group: Colour
  , source: [Synthetic]
  , description: "Red colouring"
  , kosher: KosherForbidden 
}


e123 :: ENumber
e123 = {
  name: "Amaranth"
  , e_number: "E123"
  , group: Colour
  , source: [Synthetic, Dangerous]
  , description: "Red colouring; C.I: 16185 FD and C Red 2"
  , kosher: KosherForbidden
}

e124 :: ENumber
e124 = {
  name: "Ponceau 4R, Cochineal Red A"
  , e_number: "E124"
  , group: Colour
  , source: [Synthetic, Dangerous]
  , description: "Red colouring; C.I: 16255"
  , kosher: KosherIncludingPassover
}

e129 :: ENumber
e129 = {
  name: "Allura Red AC"
  , e_number: "E129"
  , group: Colour
  , source: [Synthetic, Dangerous]
  , description: "Red colouring; C.I: 16035 FD and C Red 40: יש חוששים, מקובל ככשר"
  , kosher: NeedHashgohoWholeYear
} 

e131 :: ENumber
e131 = {
  name: "Patent Blue V"
  , e_number: "E131"
  , group: Colour
  , source: [Synthetic, Dangerous]
  , description: "Blue colouring; C.I: 42051"
  , kosher: KosherIncludingPassover
}

e140 :: ENumber
e140 = {
  name: "Chlorophyll"
  , e_number: "E140"
  , group: Colour
  , source: [Wine]
  , description: "Green colouring; C.I: 75810"
  , kosher: NeedHashgohoWholeYear
}

e141 :: ENumber
e141 = {
  name: "Copper complexes of chlorophyll and chlorophyllins"
  , e_number: "E141"
  , group: Colour
  , source: [Wine]
  , description: "Green colouring; C.I: 75810"
  , kosher: NeedHashgohoWholeYear
  
}

e150a :: ENumber
e150a =  {
  name: "Plain Caramel"
  , e_number: "E150a"
  , group: Colour
  , source: []
  , description: "Brown colouring"
  , kosher: KosherNeedPassoverHashgoho
}