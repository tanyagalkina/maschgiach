module Data.ListEnglish (findENumbersInList, AdditiveGroup, Source(
  Chametz,Kitniyot,Dairy,Animal,Wine,Eggs,Vegan,Synthetic

), 
Kashrut(NotKosher, KosherIncludingPassover, KosherNeedPassoverHashgoho, UsuallyKosherRarelyNeedHashgoho, OftenKosherNeedHashgoho, NotKosherWithoutEksher, KosherForbidden), ENumber, ENumberList, insertEntry, removeDiplicates, findENumbers, findEntry, findEntryBySubstance, findEntryByENumber, showK) where

import Prelude

import Control.Plus (empty)
import Data.Array.NonEmpty (NonEmptyArray)
import Data.Array.NonEmpty as NEA
import Data.List (List(..), filter, head, nubByEq, null)
import Data.Maybe (Maybe(..))
import Data.String.CodeUnits (contains)
import Data.String.Pattern (Pattern(..))


infixr 5 insertEntry as ++

data AdditiveGroup =  Colour | Preservative | Antioxidant | FlavourEnchancer | Sweetener | Emulsifier

data Kashrut = NotKosher    -- 0 – некашерна
             | KosherIncludingPassover   --1 – обычно кашерна
             | KosherNeedPassoverHashgoho -- 1 – обычно кашерна; требуется проверка na Pessach
             | UsuallyKosherRarelyNeedHashgoho   -- 2 – обычно кашерна; в немногих случаях требуется проверка
             | OftenKosherNeedHashgoho  -- 3 – часто бывает кашерной, но требуется проверка
             | NotKosherWithoutEksher -- 4 – нельзя употреблять без эхшерa
             | KosherForbidden  -- 1

showK :: Kashrut -> String
showK kashrut = case kashrut of
  NotKosher -> "Not Kosher!"
  KosherIncludingPassover -> "Kosher including Passover"
  KosherNeedPassoverHashgoho -> "Kosher, needs Hashgoho for Passover"
  UsuallyKosherRarelyNeedHashgoho -> "Usually Kosher, rarely needs Hashgoho"
  OftenKosherNeedHashgoho -> "Often Kosher, needs Hashgoho"
  NotKosherWithoutEksher -> "Not Kosher without Eksher"
  KosherForbidden -> "Kosher, FORBIDDEN"

data Source = Chametz | Kitniyot | Dairy | Animal | Wine | Eggs | Vegan | Synthetic

derive instance eqSource :: Eq Source


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
seedENumberList = curcumin ++ riboflavin ++ tartrazine ++ quinoline_yellow ++ sunset_yellow_FCF ++ cochineal
  ++ citrusred  
  ++ emptyENumberList

-- seed data ---
curcumin ∷ ENumber
curcumin = {
  name: "Curcumin"
  , e_number: "E100"
  , group: Colour
  , source: [Vegan]
  , description: "Yellow colouring"
  , kosher: KosherIncludingPassover
}

riboflavin ∷ ENumber
riboflavin = {
  name: "Riboflavin"
  , e_number: "E101"
  , group: Colour
  , source: [Dairy, Animal, Chametz]
  , description: "Yellow colouring"
  , kosher: KosherNeedPassoverHashgoho
}

tartrazine ∷ ENumber
tartrazine = {
  name: "Tartrazine"
  , e_number: "E102"
  , group: Colour
  , source: [] 
  , description: "Yellow colouring"
  , kosher: KosherIncludingPassover
}

quinoline_yellow ∷ ENumber
quinoline_yellow = {
  name: "Quinoline Yellow"
  , e_number: "E104"
  , group: Colour
  , source: []
  , description: "Yellow colouring"
  , kosher: KosherIncludingPassover
}

sunset_yellow_FCF ∷ ENumber
sunset_yellow_FCF = {
  name: "Sunset Yellow FCF, Orange Yellow S"
  , e_number: "E110"
  , group: Colour
  , source: [Synthetic] 
  , description: "Orange colouring"
  , kosher: KosherIncludingPassover
}

cochineal :: ENumber
cochineal = {
  name: "Cochineal"
  , e_number: "E120"
  , group: Colour
  , source: [Animal]
  , description: "Red colouring, Carmine of cochineal, Carminic Acid"
  , kosher: NotKosher
}

citrusred :: ENumber
citrusred = {
  name: "Citrus Red Nr.2"
  , e_number: "E121"
  , group: Colour
  , source: [Synthetic]
  , description: "Red colouring"
  , kosher: KosherForbidden 
}


