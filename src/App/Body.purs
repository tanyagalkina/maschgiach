module App.Body (component) where

import Prelude
import Control.Plus (empty)
import Data.ListEnglish (ENumberList, findENumbersInList)
import Data.Maybe (Maybe(..))
import Data.NonEmpty ((:|))

import Halogen as H
import Halogen.HTML as HH
import Halogen.HTML.CSS as CSS
import Halogen.HTML.Properties as HP

import CSS (alignItems, column, display, flex, flexDirection, flexStart, height, justifyContent,
paddingTop, pct, px, width)
import CSS.Flexbox (spaceBetween)
import CSS.Font (fontFamily, monospace)
import CSS.Geometry (minHeight)
import CSS.Size (vh)

import App.Common (Action(..), State)
import App.Curtain (curtain)
import App.Footer (footer)
import App.InputBar (inputBar)
import App.LanguageIcon (languageIcon)
import App.ShowResults (showResults)

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
              minHeight $ (px 3000.0)
              display flex 
              flexDirection column
              width $ pct 100.0
              -- TODO: understand the font-family css rule
              fontFamily ["monospace"] (monospace :|[] )
         ]
         [
          languageIcon
          , HH.div [
            HP.id "center-container"
            ,CSS.style do
              display flex
              flexDirection column
              justifyContent spaceBetween
              alignItems flexStart
              height $ vh 100.0
              paddingTop $ vh 5.0 
            ] 
          [
            inputBar
          , showResults state.results
          ]
          , curtain state.moveCurtain
      -- center-container end --
      , footer
]

handleAction :: forall o m. Action → H.HalogenM State Action () o m Unit
handleAction = case _ of
  OpenCurtainToTheRight str -> H.modify_ \st -> st { moveCurtain = true, results = search str}
  Search str -> H.modify_ \st -> st { results = search str}
  OpenCard eNumber -> H.modify_ \st -> st { results = empty, card = Just eNumber}

search :: String -> ENumberList
search str = case str of
  "" -> empty
  _ -> findENumbersInList str