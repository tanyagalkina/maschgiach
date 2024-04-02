module App.Body (component) where

import Prelude

import App.Common (Action(..), State)
import App.Curtain (curtain)
import App.Footer (footer)
import App.InputBar (inputBar)
import App.LanguageIcon (languageIcon)
import App.ShowResults (showResults)
import CSS (alignItems, column, display, flex, flexDirection, flexStart, height, justifyContent, paddingTop, pct, px)
import CSS.Flexbox (spaceAround)
import CSS.Font (fontFamily, monospace)
import CSS.Geometry (minHeight, maxWidth)
import CSS.Overflow (overflow, hidden)
import CSS.Size (vh)
import Control.Plus (empty)
import Data.ENumberTypes (ENumberList)
import Data.Head (findENumbersInList)
import Data.Maybe (Maybe(..))
import Data.NonEmpty ((:|))
import Halogen as H
import Halogen.HTML as HH
import Halogen.HTML.CSS as CSS
import Halogen.HTML.Properties as HP

component :: forall query input output m . H.Component query input output m 
component =
  H.mkComponent
    { 
     initialState: \_ -> { moveCurtain: false, results: empty, card: Nothing}
    , render
    , eval: H.mkEval H.defaultEval { handleAction = handleAction }
    }

render :: forall cs m. State  -> H.ComponentHTML Action cs m
render state = 
  HH.div [
           HP.id "main-container"
          ,CSS.style do 
              -- minHeight $ (px 3000.0)
              display flex 
              flexDirection column
              overflow hidden
              maxWidth $ pct 100.0
              -- TODO: understand the font-family css rule
              -- fontFamily ["monospace"] (systemUi :|[] )
              fontFamily ["monospace"] (monospace :|[] )
         ]
         [
          languageIcon
          , HH.div [
            HP.id "center-container"
            ,CSS.style do
              display flex
              flexDirection column
              justifyContent spaceAround
              alignItems flexStart
              height $ vh 100.0
              paddingTop $ vh 5.0
              fontFamily ["monospace"] (monospace :|[] )
            ] 
          [
            inputBar
          , showResults state.results
          ]
          , curtain state.moveCurtain
      -- center-container end --
      , footer
]

-- TODO: add transitionEndListener to curtain
-- getCurtain :: forall w. Boolean -> HH.HTML w Action
-- getCurtain moveCurtain | moveCurtain == false = curtain moveCurtain
--                        | otherwise = HH.div [] [] 

handleAction :: forall o m. Action → H.HalogenM State Action () o m Unit
handleAction = case _ of
  OpenCurtainToTheRight str -> H.modify_ \st -> st { moveCurtain = true, results = search str}
  Search str -> H.modify_ \st -> st { results = search str}
  OpenCard eNumber -> H.modify_ \st -> st { results = empty, card = Just eNumber}

search :: String -> ENumberList
search str = case str of
  "" -> empty
  _ -> findENumbersInList str