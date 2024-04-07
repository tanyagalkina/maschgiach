module App.Common(Action (OpenCurtainToTheRight, Search, OpenCard, ClearCard) , State, css ) where

import Prelude
import Data.ENumberTypes (ENumberList, ENumber)
import Data.Maybe (Maybe)
import Halogen.HTML as HH
import Halogen.HTML.Properties as HP

type State
  = { moveCurtain :: Boolean, results:: ENumberList, card:: Maybe ENumber}

data Action
  = OpenCurtainToTheRight String | Search String | OpenCard ENumber | ClearCard

css :: forall r i. String -> HH.IProp (class :: String | r) i
css = HP.class_ <<< HH.ClassName  