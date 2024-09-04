module App.Body (component) where

import Prelude

import App.Common (Action(..), CardDisplayLanguage(..), State)
import App.Card (card)
import App.Footer (newFooter)
import App.InputBar (searchBar)
import App.LanguageIcon (headerWithLangSwitches)
import App.ShowResults (resultsAndCard)
import CSS (column, display, flex, flexDirection)
import CSS.Font (fontFamily, monospace)
import CSS.Overflow (overflow, hidden)
import Data.ENumberTypes (ENumberList)
import Data.Head (findENumbersInList, seedENumberList)
import Data.Maybe (Maybe(..))
import Data.NonEmpty ((:|))
import Effect.Class (class MonadEffect)
import Effect.Class.Console (log)
import Halogen as H
import Halogen.HTML as HH
import Halogen.HTML.CSS as CSS
import Halogen.HTML.Properties as HP

component :: forall query input output m. MonadEffect m => H.Component query input output m 
component =
  H.mkComponent
    { 
     initialState: \_ -> { moveCurtain: false, results: seedENumberList, currentCard: Nothing, cardAppear: false, cardDisplayLanguage : English, searchStr: ""}
    , render
    , eval: H.mkEval H.defaultEval { handleAction = handleAction }
    }

mainContainerFlexVariantStyle :: forall i r. HP.IProp ( style ∷ String | r ) i
mainContainerFlexVariantStyle = CSS.style do
            display flex 
            flexDirection column
            overflow hidden
            -- TODO: understand the font-family css rule
            -- fontFamily ["some string"] (systemUi :|[] )
            fontFamily ["some string"] (monospace :|[] )
  

render :: forall cs m. State  -> H.ComponentHTML Action cs m
render state = 
    HH.div_ 
      [ HH.div
          [ HP.id "main-container"
            , mainContainerFlexVariantStyle
          ]
          [ headerWithLangSwitches state.cardDisplayLanguage
            , searchBar state.searchStr $ getPlaceholderTxt state.cardDisplayLanguage
            -- FIXME: refactor for readability
            , case state.currentCard of
                Just(myCard) -> card state.cardAppear myCard state.cardDisplayLanguage 
                Nothing -> resultsAndCard state.results state.cardDisplayLanguage
            , newFooter
          ]  
      ]

handleAction :: forall o m. MonadEffect m => Action → H.HalogenM State Action () o m Unit
handleAction = case _ of
  DoSearch str -> do
    H.modify_ \st ->
      st { searchStr = str
         , moveCurtain = true
         , results = searchNumber str
         , currentCard = Nothing
         , cardAppear = false
         }
         
  Search str ->  H.modify_ \st -> st { searchStr = str, results = searchNumber str, currentCard = Nothing, moveCurtain = true, cardAppear = false}
  OpenCard eNumber -> do
                     log "Opening Card"
                     H.modify_ \st -> st {currentCard = Just eNumber, cardAppear = true }
  ClearCard -> do
              log "Clearing card"
              H.modify_ \st -> st { currentCard = Nothing, moveCurtain = true, cardAppear = false } 
  SetCardDisplayLanguage lang -> H.modify_ \st -> st { cardDisplayLanguage = lang }

searchNumber :: String -> ENumberList
searchNumber str = case str of
  "" -> seedENumberList
  _ -> findENumbersInList str

getPlaceholderTxt :: CardDisplayLanguage -> String
getPlaceholderTxt lang = case lang of
  English -> "Name | Number"
  Russian -> "Название | Номер"
  French -> "Nom | Numéro"
  German -> "Name | Nummer"
  Hebrew -> "שם | מספר"
  Latvian -> "Nosaukums | Numurs"