module Data.ListEnglish (reallyMyProfiles) where

import Prelude
import Data.Maybe (Maybe(..))
import Data.Array.NonEmpty (NonEmptyArray)
import Data.Array.NonEmpty as NEA

import Control.Plus (empty)
import Data.List (List(..), filter, head, null, nubByEq)
import Data.Maybe (Maybe)
import Data.String.CodeUnits (contains)
import Data.String.Pattern (Pattern(..))


myProfiles:: Maybe (NonEmptyArray String)
myProfiles = NEA.fromArray ["Perfect", "Good", "Brilliant", "Excellent", "Superb", "Great", "Wonderful", "Fantastic", "Amazing", "Awesome", "Incredible", "Unbelievable", "Magnificent", "Fabulous", "Terrific", "Splendid", "Marvelous", "Phenomenal", "Extraordinary", "Outstanding", "Impressive", "Sensational", "Remarkable", "Exceptional", "Stunning", "Astounding", "Stupendous", "Mind-blowing", "Breathtaking", "Astonishing", "Glorious", "Majestic", "Grand", "Magnificent", "Sublime", "Noble", "Elegant", "Exquisite", "Graceful", "Beautiful", "Lovely", "Charming", "Delightful", "Pleasant", "Enjoyable", "Good", "Nice", "Fine", "Decent", "Fair", "Satisfactory", "Adequate", "Acceptable", "Tolerable", "Passable", "OK", "All right", "Not bad", "So-so", "Mediocre", "Middling", "Ordinary", "Average", "Fair", "Common", "Usual", "Typical", "Conventional", "Standard", "Regular", "Normal", "Traditional", "Customary", "Routine", "Accustomed", "Familiar", "Wonted", "Habitual", "Everyday", "Commonplace", "Workaday", "Prosaic", "Unremarkable", "Unexceptional", "Undistinguished", "Uninspired", "Unexciting", "Uninteresting", "Boring", "Dull", "Tedious", "Tiresome", "Monotonous", "Unvaried", "Unvarying", "Unchanging"]

reallyProfiles :: Maybe (NonEmptyArray String) -> NonEmptyArray String
reallyProfiles (Just items) = items
reallyProfiles Nothing = NEA.cons "Nothing" (NEA.singleton "Nothing")

reallyMyProfiles :: NonEmptyArray String
reallyMyProfiles = reallyProfiles myProfiles

-- ==========================================================================================

infixr 5 insertEntry as ++

data AdditiveGroup =  Colour | Preservative | Antioxidant | FlavourEnchancer | Sweetener | Emulsifier

data Kashrut = NotKosher    -- 0 – некашерна
             | KosherIncludingPassover   --1 – обычно кашерна
             | KosherNeedPassoverHashgoho -- 1 – обычно кашерна; требуется проверка na Pessach
             | UsuallyKosherRarelyNeedHashgoho   -- 2 – обычно кашерна; в немногих случаях требуется проверка
             | OftenKosherNeedHashgoho  -- 3 – часто бывает кашерной, но требуется проверка
             | NotKosherWithoutEksher -- 4 – нельзя употреблять без эхшерa
             | KosherChalavAcum  -- 1

showK :: Kashrut -> String
showK kashrut = case kashrut of
  NotKosher -> "Not Kosher!"
  KosherIncludingPassover -> "Kosher including Passover"
  KosherNeedPassoverHashgoho -> "Kosher, needs Hashgoho for Passover"
  KosherChalavAcum -> "Kosher Chalav Acum"
  UsuallyKosherRarelyNeedHashgoho -> "Usually Kosher, rarely needs Hashgoho"
  OftenKosherNeedHashgoho -> "Often Kosher, needs Hashgoho"
  NotKosherWithoutEksher -> "Not Kosher without Eksher"

data Source = Chametz | Kitniyot | Dairy | Animal | Wine | Eggs


type ENumber = {
  name :: String
  , e_number :: String
  , group :: AdditiveGroup
  , source :: Source  
  , description :: String
  , kosher :: Kashrut
}

type ENumberList = List ENumber

insertEntry :: ENumber -> ENumberList -> ENumberList
insertEntry = Cons

-- russian book: Kosher: 1, Passover: 1
--  ,(75300 .I.C (Curcumin 100 E
-- Куркумины Curcumin Curcumine
-- כשר, כולל פסח 
-- Kosher including Passover
-- Koscher auch für Pessach 

curcuminWithKashrut ∷ ENumber
curcuminWithKashrut = {
  group: "Colour"
  ,substance: "Curcumin"
  ,e_number: "E100"
  ,description: "Yellow colouring"
  ,kosher: KosherIncludingPassover
}


-- exampleListWithKashrut:: ENumberWithKashrutList
-- exampleListWithKashrut = insertEntryWithKashrut curcuminWithKashrut emptyENumberListWithKashrut


-- TODO: how to implement Display for Kashrut 
showItemWithKashrut :: ENumberWithKashrut -> String
showItemWithKashrut e = e.substance <> " (" <> e.group <> "): " <> e.e_number <> " - " <> e.description <> " - Kosher: " <> showKashrut e.kosher <> " - Passover: " <> showKashrut e.passover


emptyENumberList:: ENumberList
emptyENumberList = empty


seedENumberList:: ENumberList
seedENumberList = curcumin ++ riboflavin ++ tartrazine ++ quinoline_yellow ++ sunset_yellow_FCF ++ emptyENumberList

seedENumberListWithDuplicates:: ENumberList
seedENumberListWithDuplicates = curcumin ++ riboflavin ++ tartrazine ++ quinoline_yellow ++ sunset_yellow_FCF ++ curcumin ++ riboflavin ++ tartrazine ++ quinoline_yellow ++ sunset_yellow_FCF ++ emptyENumberList


equivalent:: ENumber -> ENumber -> Boolean
equivalent a b = a.e_number == b.e_number

removeDiplicates:: ENumberList -> ENumberList
removeDiplicates list | null list  = empty
                      | otherwise = nubByEq equivalent list

insertEntry :: ENumber -> ENumberList -> ENumberList
-- insertEntry entry list  = Cons entry list
insertEntry = Cons


-- TODO: change this to search by part or one of the fields
findEntry :: String -> String -> ENumberList -> Maybe ENumber
findEntry e_number substance = head <<< filter filterEntry
  where filterEntry::ENumber -> Boolean
        filterEntry entry = entry.e_number == e_number && entry.substance == substance

findEntryBySubstance :: String -> ENumberList -> Maybe ENumber
findEntryBySubstance substance = head <<< filter filterEntry
  where filterEntry::ENumber -> Boolean
        filterEntry entry = contains (Pattern substance)  (_.substance entry)

findEntryByENumber :: String -> ENumberList -> Maybe ENumber
findEntryByENumber e_number = head <<< filter filterEntry
  where filterEntry::ENumber -> Boolean
        filterEntry entry = contains (Pattern e_number) entry.e_number


findEntryByENumberOrSubstance :: String -> ENumberList -> Maybe ENumber
findEntryByENumberOrSubstance query = head <<< filter filterEntry
  where filterEntry::ENumber -> Boolean
        filterEntry entry = contains (Pattern query) entry.e_number || contains (Pattern query) entry.substance

showENumber :: ENumber -> String
showENumber e = e.substance <> " (" <> e.group <> "): " <> e.e_number <> " - " <> e.description


curcumin ∷ { description ∷ String , e_number ∷ String , group ∷ String , kosher ∷ Int , passover ∷ Int , substance ∷ String }
curcumin = {
  group: "Colour"
  ,substance: "Curcumin"
  ,e_number: "E100"
  ,description: "Yellow colouring"
  -- ,kosher: UsuallyKosher ("Usually Kosher")
  -- ,passover: UsuallyKosher ("Usually Kosher")
  ,kosher: 1
  ,passover: 1
}



-- seed data ---
riboflavin ∷ { description ∷ String , e_number ∷ String , group ∷ String , kosher ∷ Int , passover ∷ Int , substance ∷ String }
riboflavin = {
  group: "Colour"
  ,substance: "Riboflavin"
  ,e_number: "E101"
  ,description: "Yellow colouring"
  ,kosher: 2
  ,passover: 4
  -- ,kosher: UsuallyKosher ("Usually Kosher")
  -- ,passover: NeverKosherWithoutEksher ("Never Kosher without Eksher")
}

tartrazine ∷ { description ∷ String , e_number ∷ String , group ∷ String , kosher ∷ Int , passover ∷ Int , substance ∷ String }
tartrazine = {
  group: "Colour"
  ,substance: "Tertrazine"
  ,e_number: "E102"
  ,description: "Yellow colouring"
  -- ,kosher: UsuallyKosher "Usually Kosher"
  -- ,passover: UsuallyKosher "Usually Kosher"
  ,kosher: 1
  ,passover: 1
}

quinoline_yellow ∷ { description ∷ String , e_number ∷ String , group ∷ String , kosher ∷ Int , passover ∷ Int , substance ∷ String }
quinoline_yellow = {
  group: "Colour"
  ,substance: "Quinoline Yellow"
  ,e_number: "E104"
  ,description: "Yellow colouring"
  -- ,kosher: UsuallyKosher ("Usually Kosher")
  -- ,passover: UsuallyKosher ("Usually Kosher")
  ,kosher: 1
  ,passover: 1
}

sunset_yellow_FCF ∷ { description ∷ String , e_number ∷ String , group ∷ String , kosher ∷ Int, passover ∷ Int , substance ∷ String }
sunset_yellow_FCF = {
  group: "Colour"
  ,substance: "Sunset Yellow FCF, Orange Yellow S"
  ,e_number: "E110"
  ,description: "Yellow colouring"
  -- ,kosher: UsuallyKosher "Usually Kosher"
  -- ,passover: UsuallyKosher "Usually Kosher"
  ,kosher: 1
  ,passover: 1
}


