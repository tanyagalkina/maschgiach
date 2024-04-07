module App.Body (component) where

import Prelude

import App.Colours (brightred)
import App.Common (Action(..), State, css)
import App.Curtain (curtain, card)
import App.Footer (footer)
import App.InputBar (simpleInputBar)
import App.LanguageIcon (languageIcon)
import App.ShowResults (showResults, simpleShowResults)
import CSS (StyleM, alignItems, area, backgroundColor, border, column, display, flex, flexDirection, flexStart, grid, height, justifyContent, main, paddingTop, pct, px, solid, spaceBetween, width)
import CSS.Flexbox (spaceAround)
import CSS.Font (fontFamily, monospace)
import CSS.Geometry (minHeight, maxWidth)
import CSS.Overflow (overflow, hidden)
import CSS.Size (vh)
import Control.Plus (empty)
import Data.Array (concat)
import Data.ENumberTypes (ENumberList)
import Data.Head (findENumbersInList)
import Data.Maybe (Maybe(..))
import Data.NonEmpty ((:|))
import Data.String.Regex (search)
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
            -- minHeight $ vh 300.0
            maxWidth $ pct 100.0
              -- TODO: understand the font-family css rule
              -- fontFamily ["some string"] (systemUi :|[] )
            fontFamily ["some string"] (monospace :|[] )
  

-- mainContainerGridProperties:: forall r i. Array ( HP.IProp ( style :: String | r ) i )
-- mainContainerGridProperties =  [
--   CSS.style do
--     display grid
--     minHeight $ vh 300.0
--     width $ pct 100.0
--     fontFamily ["monospace"] (monospace :|[] )
--     -- gridTemplateRows [?, ?, ?, ?]
--     , HP.attr 
--         (AttrName "style") 
--         (
--           "grid-template-columns: 35vw 50vw; " <>
--           "grid-template-rows: 30px 500px 60px;"
--         )
--   ]
  -- "grid-template-columns: repeat(" <> ?? <> ", 1fr); " <> 
-- "grid-template-rows: repeat(" <> show 3 <> ", 1fr);")


-- d :: StyleM Unit
-- d = display grid

render :: forall cs m. State  -> H.ComponentHTML Action cs m
render state = 
  HH.div [ 
          -- css "main-container"]
          -- (concat [
          -- [
          HP.id "main-container"
          ,mainContainerFlexVariantStyle
          -- TODO: is there a way to make grid using purescript ONLY
          ] 

          -- , mainContainerGridProperties])
              [
                 languageIcon -- 1.
                                -- fontFamily ["monospace"] (monospace :|[] )
                              -- gridTemplateRows [?, ?, ?, ?]
                              -- , HP.attr 
                              --     (AttrName "style") 
                              --     (
                              --       "grid-template-columns: 35vw 50vw; "
                              --       --  <>
                              --       -- "grid-template-rows: 30px 500px 60px;"
                              --     )
                          -- ]
                  , HH.div [
                    -- HP.id "center-container" -- 2.
                         css "my-grid-container"  -- grid on desktop || ?? on mobile
                  -- , CSS.style do
                  --     display grid
                      -- display flex
                      -- flexDirection column
                      -- justifyContent spaceAround
                      -- alignItems flexStart
                      -- height $ vh 100.0
                      -- paddingTop $ vh 5.0
                      -- fontFamily ["monospace"] (monospace :|[] )
                      ]
                      [
                        HH.div[
                        css "my-search-and-results"
                        ,CSS.style do
                  -- display grid
                          display flex
                          flexDirection column
                          -- justifyContent spaceAround
                          alignItems flexStart
                          height $ vh 100.0
                          paddingTop $ vh 5.0
                          border solid (px 3.0) brightred
                          fontFamily ["monospace"] (monospace :|[] )
                      ]
                      [
                         simpleInputBar
                          , simpleShowResults state.results
                          , card state.moveCurtain state.card
                          -- , card2 state.moveCurtain state.card
                      ]
                   ,HH.div_[HH.text "the rest of the screen"]]

                --   ]
                -- [
                --   HH.div[
                --     CSS.style do 
                --     border solid (px 3.0) brightred
                --   ] [HH.text "first text box"]
                --   ,HH.div[
                --     CSS.style do 
                --     border solid (px 3.0) brightred
                --   ] [HH.text "second text box"]
                -- ]
                 -- center-container end --
          -- , curtain state.moveCurtain
          ,footer --3.
]

-- TODO: add transitionEndListener to curtain
-- getCurtain :: forall w. Boolean -> HH.HTML w Action
-- getCurtain moveCurtain | moveCurtain == false = curtain moveCurtain
--                        | otherwise = HH.div [] [] 

handleAction :: forall o m. Action → H.HalogenM State Action () o m Unit
handleAction = case _ of
  OpenCurtainToTheRight str -> H.modify_ \st -> st { moveCurtain = true, results = searchNumber str}
  Search str -> H.modify_ \st -> st { results = searchNumber str}
  -- TODO: See why results gets cleared when card is opened
  OpenCard eNumber -> H.modify_ \st -> st { moveCurtain = false, card = Just eNumber}
  ClearCard -> H.modify_ \st -> st { card = Nothing, moveCurtain = true} 

searchNumber :: String -> ENumberList
searchNumber str = findENumbersInList str
-- search str = case str of
--    "" -> empty
--   _ -> findENumbersInList str