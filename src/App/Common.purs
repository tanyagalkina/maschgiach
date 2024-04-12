module App.Common(Action (OpenCurtainToTheRight, Search, OpenCard, ClearCard, SetCardDisplayLanguage) , State, css, CardDisplayLanguage(..)) where

import Prelude

import Data.ENumberTypes (ENumberList, ENumber)
import Data.List.Internal (Set)
import Data.List.Lazy ((..))
import Data.Maybe (Maybe)
import Halogen.HTML as HH
import Halogen.HTML.Properties as HP

data CardDisplayLanguage = English | Russian | German | Hebrew | French | Latvian

type State
  = { moveCurtain :: Boolean, results:: ENumberList, currentCard:: Maybe ENumber, cardAppear ::Boolean, cardDisplayLanguage:: CardDisplayLanguage}

data Action
  = OpenCurtainToTheRight String | Search String | OpenCard ENumber | ClearCard | SetCardDisplayLanguage CardDisplayLanguage

css :: forall r i. String -> HH.IProp (class :: String | r) i
css = HP.class_ <<< HH.ClassName  