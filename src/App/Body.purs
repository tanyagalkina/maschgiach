module App.Body (component) where

import Prelude

import App.Assets (typeSound)
import App.Common (Action(..), CardDisplayLanguage(..), State, css)
import App.Curtain (curtain, card, newCard)
import App.Footer (footer, newFooter)
import App.InputBar (simpleInputBar, searchBar)
import App.LanguageIcon (languageIcon, headerWithLangSwitches)
import App.ShowResults (showResults, resultsAndCard)
import CSS (alignItems, column, display, flex, flexDirection, flexStart, height, justifyContent, paddingTop)
import CSS.Flexbox (spaceAround)
import CSS.Font (fontFamily, monospace)
import CSS.Overflow (overflow, hidden)
import CSS.Size (vh)
import Control.Plus (empty)
import Data.ENumberTypes (ENumberList)
import Data.Head (findENumbersInList)
import Data.Maybe (Maybe(..))
import Data.NonEmpty ((:|))
import Effect (Effect)
import Effect.Class (class MonadEffect)
import Effect.Class.Console (log)
import Halogen as H
import Halogen.HTML as HH
import Halogen.HTML.CSS as CSS
import Halogen.HTML.Properties as HP
import Web.DOM.Document (doctype)
import Web.HTML.HTMLAudioElement (create', toHTMLMediaElement)
import Web.HTML.HTMLMediaElement (HTMLMediaElement, play)

component :: forall query input output m. MonadEffect m => H.Component query input output m 
component =
  H.mkComponent
    { 
     initialState: \_ -> { moveCurtain: false, results: empty, currentCard: Nothing, cardAppear: false, cardDisplayLanguage : English, typingSound: mediaElem, searchStr: ""}
    , render
    , eval: H.mkEval H.defaultEval { handleAction = handleAction }
    }


mainContainerFlexVariantStyle :: forall i r. HP.IProp ( style ∷ String | r ) i
mainContainerFlexVariantStyle = CSS.style do
            display flex 
            flexDirection column
            overflow hidden
            -- justifyContent spaceAround
              -- TODO: understand the font-family css rule
              -- fontFamily ["some string"] (systemUi :|[] )
            fontFamily ["some string"] (monospace :|[] )
  

render :: forall cs m. State  -> H.ComponentHTML Action cs m
render state = 
    HH.div_ [
            -- curtain state.moveCurtain
            HH.div [ 
                    HP.id "main-container"
                    ,mainContainerFlexVariantStyle
            ]
            [
                headerWithLangSwitches state.cardDisplayLanguage
              , searchBar $ state.searchStr
--               card :: forall w. Boolean -> Maybe ENumber -> CardDisplayLanguage -> HH.HTML w Action
-- card open e_number lang =  HH.div [ 
                -- FIXME: refactor this ugly piece
              , (case state.currentCard of Just(myCard) -> card state.cardAppear myCard state.cardDisplayLanguage 
                                           Nothing -> resultsAndCard state.results state.cardDisplayLanguage)
              , newFooter
            ] 
          --   [
          --     languageIcon state.cardDisplayLanguage
          --     , HH.div [
          --                css "center-container"
          --       ]
          --       [
          --         HH.div[
          --                 css "search-and-results"
          --                ,CSS.style do
          --                 display flex
          --                 flexDirection column
          --                 -- justifyContent spaceAround
          --                 alignItems flexStart
          --                 height $ vh 100.0
          --                 paddingTop $ vh 5.0
          --                 -- border solid (px 3.0) brightred
          --                 fontFamily ["monospace"] (monospace :|[] )
          --             ]
          --             [
          --                  simpleInputBar
          --                 , showResults state.results state.cardDisplayLanguage
          --             ]
          --         , card state.cardAppear state.currentCard state.cardDisplayLanguage    
          --         , curtain state.moveCurtain
          --       ]
          -- ,footer
        ]

handleAction :: forall o m. MonadEffect m => Action → H.HalogenM State Action () o m Unit
handleAction = case _ of
  DoSearch str -> do
                                  -- TODO: try to use AudioCtx to reduce sound delay
                                  -- audioElem <- H.gets _.typingSound
                                  -- H.liftEffect $ audioElem >>= play
                                  H.modify_ \st -> st { searchStr = str, moveCurtain = true, results = searchNumber str
                                  ,  currentCard = Nothing, cardAppear = false}
  Search str ->  H.modify_ \st -> st { searchStr = str, results = searchNumber str, currentCard = Nothing, moveCurtain = true, cardAppear = false}
  OpenCard eNumber -> do
                     log "Opening Card"
                     H.modify_ \st -> st {currentCard = Just eNumber, cardAppear = true }
  ClearCard -> do
              log "Clearing card"
              H.modify_ \st -> st { currentCard = Nothing, moveCurtain = true, cardAppear = false } 
  SetCardDisplayLanguage lang -> H.modify_ \st -> st { cardDisplayLanguage = lang }
  -- SetCardDisplayLanguage _lang -> H.modify_ \st -> st { cardDisplayLanguage = nextLang st.cardDisplayLanguage }
  TypingSound -> do
        audioElem <- H.liftEffect mediaElem
        H.liftEffect $ play audioElem

mediaElem :: Effect HTMLMediaElement
mediaElem = do  
  -- audioEl <- create' "../assets/click-button.mp3"
  audioEl <- create' typeSound
  log "audio element created"
  pure $ toHTMLMediaElement audioEl             

nextLang :: CardDisplayLanguage -> CardDisplayLanguage
nextLang lang = case lang of
  English -> Russian
  Russian -> German
  German -> Hebrew
  Hebrew -> French
  French -> Latvian
  Latvian -> English

searchNumber :: String -> ENumberList
-- searchNumber str = findENumbersInList str
-- TODO: decide about the empty case
searchNumber str = case str of
  "" -> empty
  _ -> findENumbersInList str