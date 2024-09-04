module Main where

import Prelude

import App.Body as Body
import Effect (Effect)
import Halogen.Aff as HA
import Halogen.VDom.Driver (runUI)

main :: Effect Unit
main = HA.runHalogenAff do
  body <- HA.awaitBody
  -- runUI :: forall r f i o. RenderSpec r -> Component f i o Aff -> i -> Aff (HalogenIO f o Aff)
  runUI Body.component unit body