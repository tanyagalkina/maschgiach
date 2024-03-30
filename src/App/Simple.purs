module App.Simple (component) where

import Data.Int
import Prelude

import App.Colours (beige, blue, brightred, brown, dark_yellow, green, grey, israelblue, lightgreen, mintcream, orange, peach, salad, skyblue, softred, yellow, israelblue, nogrey, black)
import CSS (Color, Display, a, alignContent, alignItems, backgroundColor, backgroundImage, block, border, borderLeft, borderRadius, bottom, boxShadow, color, display, displayNone, em, flex, flexBasis, flexDirection, flexStart, flexWrap, fontFamily, fontSize, height, inline, inlineBlock, justifyContent, left, lineHeight, margin, marginLeft, marginRight, marginTop, maxHeight, minHeight, padding, paddingLeft, paddingRight, paddingTop, pct, position, px, rgba, right, solid, top, width, zIndex)
import CSS.Common (none)
import CSS.Cursor (move)
import CSS.Geometry (minHeight, maxHeight)
import CSS.Size (vh)
import Control.Monad.State (state)
import Control.Plus (empty)
import Data.Array (fromFoldable, elem)
import Data.List as List
import Data.ListEnglish (AdditiveGroup, ENumber, ENumberList, Kashrut(..), Source(..), findENumbersInList, showK, showSources)
import Data.Maybe (Maybe(..))
import Data.String.CodePoints (length)
import Halogen (Namespace(..))
import Halogen as H
import Halogen.HTML (fromPlainHTML)
import Halogen.HTML as HH
import Halogen.HTML.CSS as CSS
import Halogen.HTML.Events (onClick, onInput)
import Halogen.HTML.Events as HE
import Halogen.HTML.Properties (InputType(..))
import Halogen.HTML.Properties as HP
import Web.DOM.Document (doctype)
import Web.DOM.ShadowRoot (ShadowRootMode(..))

css :: forall r i. String -> HH.IProp (class :: String | r) i
css = HP.class_ <<< HH.ClassName

type State
  = { moveCurtain :: Boolean, results:: ENumberList, card:: Maybe ENumber}

data Action
  = OpenCurtainToTheRight String | Search String | OpenCard ENumber
component :: forall query input output m . H.Component query input output m 
component =
  H.mkComponent
    { 
     initialState: \_ -> { moveCurtain: false, results: empty, card: Nothing}
    , render
    , eval: H.mkEval H.defaultEval { handleAction = handleAction }
    }

render :: forall cs m. State  -> H.ComponentHTML Action cs m
render _state = 
  HH.div [HP.id "content-container"]
     [
    --  halogenLink  -- 3. Child 
    -- fromPlainHTML myPlainHTML
      HH.div [
            CSS.style do
             marginLeft $ pct 90.0
             marginTop $ em 2.0
         ]
         [HH.img 
          [
            CSS.style do 
             width $ px 40.0
             height $ px 40.0
           , HP.src "../assets/ivrit3.png"
          , HP.alt "language"
          ]
         ]
      -- center container start 
      , HH.div [ css "center-container"] 
          [HH.div 
              [
              css "my-simple-input"
              ]
              [
              HH.img [
              CSS.style do
              -- -- width: 10vw; /* 10% of the viewport's width */
              -- height: auto; /* The height will scale proportionally */
                width $ px 50.0
                height $ px 50.0
                margin (px 10.0 )   (px 10.0 )   (px 10.0 )  (px 10.0 )
                -- ]
            -- HP.src "../assets/lupe_2.png"
                ,HP.src "../assets/little_search.svg"
               , HP.alt "lupe"
            --  , onInput \input -> OpenCurtainToTheRight input
             ]
              , HH.input
              
              [
              HP.type_ HP.InputText
              , CSS.style do
                fontSize $ px 40.0 
              , HE.onValueInput \str -> OpenCurtainToTheRight str
              -- , HE.onClick \_ -> Search ""
              -- , HE.onValueInput\str -> Search str  
              -- , HP.placeholder "tezku le mitzvot!"
              ]
          ---------------------
          ]

          --, HH.div [ css "results-bar"] 
            --  ,HH.ul[
            --   css "result_list"
            --   , CSS.style do
            --   margin (px 20.0 )   (px 20.0 )   (px 20.0 )  (px 20.0 )
                
            --  ] $ map renderENumber (fromFoldable _state.results)
          -- TODO: make nice show results
        -- , HH.p [
        --  ]
          , HH.div_
          [showResults _state.results]  
           -- [map renderENumber (fromFoldable _state.results)]
        ]
          -----------------------
        -- , HH.div[ css "results-bar"] [
        --    HH.ul_ $ map renderENumber (fromFoldable _state.results)
        --   HH.text "I want to know where I am"
        --  ,HH.text "I also want to know where I am"
        -- ]
        , HH.div [ 
                   HP.classes $ getCurtainClassList _state.moveCurtain
                    --   TODO: clean the styles
                    ,CSS.style do
                       paddingTop $ pct 7.0
                       paddingRight $ px 40.0
                       paddingLeft $ px 70.0
                      --  alignItems flexStart
                   ]
                   [
                    HH.div[
                     HP.id "curtain-content-one"
                     , CSS.style do
                       margin (px 0.0 )   (px 10.0 )   (px 60.0 )  (px 10.0 ) 
                       fontSize $ px 20.0
                    ] [HH.text " This ENumber Dictionary is based on Sefer Mahor LeKaschrut and on Sefer of Rabbi Pantelyat; it is not exhaustive and is meant to be used as a reference only. For more information, please consult a competent Halachic authority."]

                    ,HH.div[
                      HP.id "curtain-content-two"
                      , CSS.style do
                        margin (px 60.0) (px 20.0) (px 40.0) (px 10.0)
                        fontSize $ px 20.0
                    ] [HH.text "One more text piece which we want to render into our Disclaimer Screen"]
                  ]
      --     -- --------------------------
      -- center container end
      -----------------------------------

        , HH.div
          [
            css "footer"
          ]
          [
            -- HH.div [ css "resources"] [HH.text "Resources"]
            HH.div [css "footer-text"] [ HH.text "© 2024. We love Israel" ]
            , HH.div [css "footer-line"] []
            , HH.div [css "resources"] [HH.text "Here we want to write more in detail about the resources we used to build this app"]
          ]
     ]


calculateMinHeight:: Int -> Number
calculateMinHeight 1 = 50.0
calculateMinHeight len = 15.0 * (toNumber len)


showResults :: forall w . ENumberList -> HH.HTML w Action
showResults arr = 
  HH.div [
    css "results-bar"

    ,CSS.style do
    -- minHeight $ px (toNumber (List.length arr) * 40.0)
    --   width $ pct 100.0
    minHeight $ vh (calculateMinHeight $ List.length arr)
    -- minHeight $ vh 60.0
    maxHeight $ vh 80.0
    -- minHeight $ vh 50.0
  ] $ map renderENumber (fromFoldable arr)
    -- [ HH.h1_ [ HH.text ""]
    -- TODO: should  I have an Array ENumber  | NonEmptyArray ENumber | ListENumber ( like we have now ) ??
    -- [HH.ul[
    --   CSS.style do
    --   width $ pct 100.0
    --   -- margin (px 0.0) (px 0.0) (px 0.0) (px 0.0)
    -- ] $ map renderENumber (fromFoldable arr)]
    -- ]


renderENumber :: forall w . ENumber -> HH.HTML w Action
renderENumber eNumber =
  -- HH.li [ css "my-list"]
    -- HH.button
    HH.div
        [ 
          css "e-number-card"
          -- css "button"
          , CSS.style do
          backgroundColor nogrey
          color brown
          borderLeft solid (em 0.7) $ getBackgroundForKashrut eNumber 
            -- (backgroundColor $ (getBackgroundForKashrut eNumber))
            -- (color $ getColorForKashrut eNumber)
            -- my_style make reusable
          --, HE.onClick $ \_ -> OpenCard eNumber 
          -- ,HE.onClick $ \_ -> CSS.style do
          --   backgroundColor brown
          ]
        [ HH.text (eNumber.name <> " " <> eNumber.e_number)
         , HH.div [
           css "sources"
          --  , CSS.style do
          --  fontSize $ px 20.0
           ] [
               HH.text (showSources eNumber.source)
               ,HH.br_ 
              ,HH.text (showK eNumber.kosher)]]
    


getBackgroundForKashrut :: ENumber -> Color
getBackgroundForKashrut k = if (containsDairy k.source) then skyblue else  
    case k.kosher of
        NotKosher -> softred   
        KosherIncludingPassover -> lightgreen
        KosherNeedPassoverHashgoho -> green
        UsuallyKosherRarelyNeedHashgoho -> yellow
        OftenKosherNeedHashgoho -> orange
        NeedHashgohoWholeYear -> softred
        KosherForbidden -> brightred

getColorForKashrut :: ENumber -> Color
getColorForKashrut k = if (containsDairy k.source) then brown else  
    case k.kosher of
        NotKosher -> peach   
        KosherIncludingPassover -> blue
        KosherNeedPassoverHashgoho -> peach
        UsuallyKosherRarelyNeedHashgoho -> brown
        OftenKosherNeedHashgoho -> green
        NeedHashgohoWholeYear -> brown
        KosherForbidden -> peach        

containsDairy:: Array Source -> Boolean
containsDairy arr = elem Dairy arr  



-- #footer_variant2 {
--   position: absolute;
-- 	bottom: 0px;
-- 	width: 100%; 
-- 	height: 109px;
--   background: linear-gradient(to right, #FFAA64, #FFC882, #FFE6A0);
--   /* background-color: rgb(247, 198, 108); */
-- }




getCurtainClassList :: Boolean -> Array HH.ClassName
getCurtainClassList moveCurtain = 
 [HH.ClassName "curtain"] <> if moveCurtain then [HH.ClassName "curtain-move-right"] else []


--   [ (HH.ClassName "curtain-move-right", moveCurtain) ]
-- dont use component slots
-- HalogenM is often called the "eval" Monad
-- HalogenM works only with Halogen-specific features
-- handleAction :: forall cs o m. Action → H.HalogenM State Action cs o m Unit  

-- eHandleAction :: forall output m. EAction -> H.HalogenM EState EAction () output m Unit
-- eHandleAction = case _ of
--   Search str -> H.modify_ \st -> st { description = getDescription (head $ search str), results = search str }
--   OpenCard eNumber -> H.modify_ \st -> st { description = eNumber.name, results = empty, card = Just eNumber}


handleAction :: forall o m. Action → H.HalogenM State Action () o m Unit

handleAction = case _ of
  -- Increment -> H.modify_ \st -> st { count = st.count + 1 }
  -- Decrement -> H.modify_ \st -> st { count = st.count - 1 }
  -- OpenCurtainToTheRight str -> H.modify_ \st  -> st { moveCurtain =  getLength str, results = search str}
  OpenCurtainToTheRight str -> H.modify_ \st -> st { moveCurtain = true, results = search str}
  Search str -> H.modify_ \st -> st { results = search str}
  OpenCard eNumber -> H.modify_ \st -> st { results = empty, card = Just eNumber}
  -- OpenCard eNumber -> H.modify_ \st -> st { count = st.count + 1, moveCurtain = true, card}
  -- CloseCurtainToTheLeft -> H.modify_ \st -> st { count = st.count - 1, moveCurtain = false }

-- eHandleAction :: forall output m. EAction -> H.HalogenM EState EAction () output m Unit
-- eHandleAction = case _ of
--   Search str -> H.modify_ \st -> st { description = getDescription (head $ search str), results = search str }

search :: String -> ENumberList
search str = case str of
  "" -> empty
  _ -> findENumbersInList str


getLength :: String -> Boolean
getLength str = case length str of
  0 -> false
  _ -> true  

halogenLink :: forall w i. HH.HTML w i
halogenLink = HH.div_ 
  [ HH.h3 [
    CSS.style do
      color $ rgba 245 255 250 1.0
      marginTop $ px 40.0
      marginLeft $ pct 15.0
  ] [ HH.text "schalom"]
  ]

myPlainHTML :: HH.PlainHTML
myPlainHTML = HH.text "Hello, Plain HTML Type!"  
