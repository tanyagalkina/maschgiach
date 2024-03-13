module Test.Main where

import Prelude

import Data.Maybe (Maybe(..))
import Effect (Effect)
import Effect.Class.Console (log)
import Main (functionThatReturnsElement)
import Test.Unit (suite, test)
import Test.Unit.Assert as Assert
import Test.Unit.Main (runTest)
import Halogen.HTML as HH

main :: Effect Unit
main = do
  runTest do
    suite "HTML Functions" do
      test "HTML first" do
      --  Assert.equal (functionThatReturnsElement "Hello, World!") (HH.div_
    -- [ HH.text "Hello, World" ] )
        Assert.equal "See how to test this" "See how to test this"
  
  log "You should add some tests."
