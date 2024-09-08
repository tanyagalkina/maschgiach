module App.Common(Action (DoSearch, OpenCard, ClearCard, SetCardDisplayLanguage) , State, css, CardDisplayLanguage(..)) where

import Prelude

import Data.ENumberTypes (ENumberList, ENumber)
import Data.Maybe (Maybe)
import Halogen.HTML as HH
import Halogen.HTML.Properties as HP
-- import Effect (Effect)
-- import Web.HTML.HTMLMediaElement (HTMLMediaElement)

data CardDisplayLanguage = English | Russian | German | Hebrew | French | Latvian

derive instance eqCardDisplayLanguage :: Eq CardDisplayLanguage


type State
  = { moveCurtain :: Boolean, results:: ENumberList, currentCard:: Maybe ENumber, cardAppear ::Boolean, cardDisplayLanguage:: CardDisplayLanguage, searchStr:: String}

-- data Action
--   = DoSearch String | Search String | OpenCard ENumber | ClearCard | SetCardDisplayLanguage CardDisplayLanguage

data Action
  = DoSearch String | OpenCard ENumber | ClearCard | SetCardDisplayLanguage CardDisplayLanguage  


css :: forall r i. String -> HH.IProp (class :: String | r) i
css = HP.class_ <<< HH.ClassName  