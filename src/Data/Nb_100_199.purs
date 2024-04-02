-- Food Colours 100-199

module Data.Nb100to199 (colorENumberList) where

import Data.ENumberTypes(ENumber, ENumberList, AdditiveGroup(..), Kashrut(..), Source(..), insertEntry, emptyENumberList)


infixr 5 insertEntry as ++

colorENumberList :: ENumberList
colorENumberList = e100 ++ e101 ++ e102 ++ e104 ++ e110 ++ e120
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