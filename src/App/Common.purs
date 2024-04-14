module App.Common(Action (OpenCurtainToTheRight, Search, OpenCard, ClearCard, SetCardDisplayLanguage, TypingSound) , State, css, CardDisplayLanguage(..)) where

import Prelude

import Data.ENumberTypes (ENumberList, ENumber)
import Data.List.Internal (Set)
import Data.List.Lazy ((..))
import Data.Maybe (Maybe)
import Halogen.HTML as HH
import Halogen.HTML.Properties as HP
import Effect (Effect)
import Web.HTML.HTMLMediaElement (HTMLMediaElement, play)

data CardDisplayLanguage = English | Russian | German | Hebrew | French | Latvian

type State
  = { moveCurtain :: Boolean, results:: ENumberList, currentCard:: Maybe ENumber, cardAppear ::Boolean, cardDisplayLanguage:: CardDisplayLanguage, typingSound:: Effect HTMLMediaElement}

data Action
  = OpenCurtainToTheRight String | Search String | OpenCard ENumber | ClearCard | SetCardDisplayLanguage CardDisplayLanguage
   | TypingSound

css :: forall r i. String -> HH.IProp (class :: String | r) i
css = HP.class_ <<< HH.ClassName  