module App.Body (component) where

import Prelude
import Control.Plus (empty)
import Data.String.CodePoints (length)

import Halogen as H
import Halogen.HTML as HH
import Halogen.HTML.Properties as HP

import CSS.Geometry (minHeight, maxHeight)
import CSS.Size (vh)
import CSS (Color, alignItems, backgroundColor, backgroundImage, block, border, borderLeft, borderRadius, bottom, boxShadow, color, display, displayNone, em, flex, flexBasis, flexDirection, flexStart, flexWrap, fontFamily, fontSize, height, inline, inlineBlock, justifyContent, left, lineHeight, margin, marginLeft, marginRight, marginTop, maxHeight, minHeight, padding, paddingLeft, paddingRight, paddingTop, pct, position, px, rgba, right, solid, top, width, zIndex)

import App.Common (Action(..), State, css)
import App.Colours (blue, brightred, brown, dark_yellow, green, grey, israelblue, lightgreen, mintcream, orange, peach, salad, skyblue, softred, yellow, israelblue, nogrey, black)
import App.LanguageIcon (languageIcon)
import App.InputBar (inputBar)
import App.ShowResults (showResults)
import App.Curtain (curtain)
import App.Footer (footer)

import Data.ListEnglish (ENumberList, findENumbersInList)
import Data.Maybe (Maybe(..))

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
  HH.div [HP.id "content-container"]
     [
      languageIcon
      , HH.div [ css "center-container"] 
          [
            inputBar
          , showResults state.results
          ]
          , curtain state.moveCurtain
      -- center container end --
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