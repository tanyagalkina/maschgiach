module Data.ENumberTypes (ENumber, ENumberList, AdditiveGroup(..), Source(..), Kashrut(..), emptyENumberList, insertEntry) where 

import Prelude

import Control.Plus (empty)
import Data.List (List(..))
import Data.Maybe (Maybe)


infixr 5 insertEntry as ++

-- TODO: implement Show for AdditiveGroup LATER, because there are new variants coming
data AdditiveGroup =  Colour | Preservative | Antioxidant | FlavourEnchancer | Sweetener | Emulsifier | Stabilizer | AcidityRegulator | AntiCakingAgent | Acid | None

data Kashrut = NotKosher   
             | KosherIncludingPassover 
             | KosherNeedPassoverHashgoho 
             | UsuallyKosherRarelyNeedsHashgoho
             | OftenKosherNeedHashgoho 
             | NeedHashgohoWholeYear
             | KosherForbidden
             | IssuficientData
             | NeedHashgohoWholeYearSomeAllow
            --  | SafekKarshuth

data Source = Chametz | Kitniyot | Dairy | Animal | Wine | Eggs | Vegan | Synthetic | Mushroom | Dangerous
derive instance eqSource :: Eq Source


type ENumber = {
    name_english :: String
  , name_russian :: String
  , name_german :: String
  , name_hebrew :: String
  , name_french :: String
  , name_latvian :: String
  , e_number :: String
  , group :: AdditiveGroup
  , source :: Array Source  
  , description :: String
  , kosher :: Kashrut
}


type ENumberList = List ENumber

emptyENumberList:: ENumberList
emptyENumberList = empty


insertEntry :: ENumber -> ENumberList -> ENumberList
-- insertEntry entry list  = Cons entry list
insertEntry = Cons