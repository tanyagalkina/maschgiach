module App.Weather ( component ) where

-- WANT TO GET WEATHER DATA FROM API
-- https://api.openweathermap.org/data/2.5/weather?q=riga&appid=6d18743f78e536f11931eaf761919829  
-- {"coord":{"lon":24.0833,"lat":57},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01n"}],"base":"stations","main":{"temp":273.93,"feels_like":272.22,"temp_min":272.55,"temp_max":274.19,"pressure":1023,"humidity":54},"visibility":10000,"wind":{"speed":1.54,"deg":100},"clouds":{"all":0},"dt":1710095327,"sys":{"type":2,"id":2075320,"country":"LV","sunrise":1710046339,"sunset":1710087339},"timezone":7200,"id":456173,"name":"Rīga","cod":200}

import Prelude

import Affjax.ResponseFormat as AXRF
import Affjax.Web as AX
import Data.Argonaut.Core (jsonEmptyObject, stringify)
import Data.Argonaut.Core as Argonaut
import Data.Argonaut (jsonNull, stringify, parseJson)
import Data.Argonaut.Core (Json)

import Data.Either (Either(..))
import Data.Either (Either, hush)
import Data.Maybe (Maybe(..))
import Effect.Aff.Class (class MonadAff)
import Effect.Console (log)
import Halogen as H
import Halogen.HTML as HH
import Halogen.HTML.Events as HE
import Halogen.HTML.Properties as HP
import Web.Event.Event (Event)
import Web.Event.Event as Event

type State =  { city:: String, loading:: Boolean, result :: Maybe String }

data Action = ChooseCity String | FetchWeather Event

initialState :: String -> State
initialState city = { city: city, loading: false, result: Nothing }

component:: forall query output m. MonadAff m => H.Component query String output m
component = H.mkComponent {
  initialState: \city -> initialState city
  , render
  , eval: H.mkEval (H.defaultEval { handleAction = handleAction })
}

render :: forall m. State -> H.ComponentHTML Action () m
render state = 
  HH.form
    [ HE.onSubmit \ev -> FetchWeather ev ]
    [ HH.h1_ [ HH.text "Look up Weather Report" ]
    , HH.label_
        [ HH.div_ [ HH.text "Enter city:" ]
        , HH.input
            [ HP.value state.city
            , HE.onValueInput \str -> ChooseCity str
            ]
        ]
    , HH.button
        [ HP.disabled state.loading
        , HP.type_ HP.ButtonSubmit
        ]
        [ HH.text "Check Weather" ]
    , HH.p_
        [ HH.text $ if state.loading then "Working..." else "" ]
    , HH.div_
        case state.result of
          Nothing -> []
          Just res ->
            [ HH.h2_
                [ HH.text "Response:" ]
            , HH.pre_
                [ HH.code_ [ HH.text (prettyResult res)] ]
            ]
    ]



handleAction :: forall output m. MonadAff m => Action -> H.HalogenM State Action () output m Unit
handleAction = case _ of
  ChooseCity city -> do
    H.modify_ _ { city = city, result = Nothing }

  FetchWeather event -> do
   ---
    H.liftEffect $ Event.preventDefault event
    city <- H.gets _.city
    H.modify_ _ { loading = true }
    response <- H.liftAff $ AX.get AXRF.string ("https://api.openweathermap.org/data/2.5/weather?q=" <> city <> "&appid=6d18743f78e536f11931eaf761919829")
    H.modify_ _ { loading = false, result = map _.body (hush response) }


--- THIS DOES NOT WORK, TRY TO DESERIALIZE JSON INTO A RECORD
prettyRes :: String -> Either String String
prettyRes str = case parseJson str of
  Left err -> Left $ "Error parsing JSON: " <> show err
  Right json -> Right $ stringify json 

prettyResult :: String -> String
prettyResult str = case prettyRes str of
  Left err -> show err
  Right res -> res

