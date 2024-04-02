module App.Body (component) where

import Prelude

import App.Common (Action(..), State)
import App.Curtain (curtain)
import App.Footer (footer)
import App.InputBar (inputBar)
import App.LanguageIcon (languageIcon)
import App.ShowResults (showResults)
import CSS (alignItems, column, display, flex, flexDirection, flexStart, grid, height, justifyContent, main, paddingTop, pct, px, width)
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
import Data.Array ( concat )
import Halogen (AttrName(..))
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


mainContainerFlexVariantStyle :: forall i r. HP.IProp ( style ∷ String | r ) i
mainContainerFlexVariantStyle = CSS.style do
            display flex 
            flexDirection column
            overflow hidden
            -- TODO: how to make the main container resizable ( now it is hardcoded to 300vh )
            minHeight $ vh 300.0
            maxWidth $ pct 100.0
              -- TODO: understand the font-family css rule
              -- fontFamily ["some string"] (systemUi :|[] )
            fontFamily ["some string"] (monospace :|[] )
  

mainContainerGridProperties:: forall r i. Array ( HP.IProp ( style :: String | r ) i )
mainContainerGridProperties =  [
  CSS.style do
    display grid
    minHeight $ vh 300.0
    width $ pct 100.0
    fontFamily ["monospace"] (monospace :|[] )
    -- gridTemplateRows [?, ?, ?, ?]
    , HP.attr 
        (AttrName "style") 
        (
        -- "grid-template-columns: repeat(" <> ?? <> ", 1fr); " <> 
        "grid-template-rows: repeat(" <> show 3 <> ", 1fr);")
  ]


render :: forall cs m. State  -> H.ComponentHTML Action cs m
render state = 
  HH.div 
          -- (concat [
          [
           HP.id "main-container"
           ,mainContainerFlexVariantStyle
          -- TODO: is there a way to make grid using purescript ONLY
          ] 
          -- , mainContainerGridProperties])
              [
                 languageIcon
                  , HH.div [
                    HP.id "center-container"
                  , CSS.style do
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
                 -- center-container end --
          , curtain state.moveCurtain
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