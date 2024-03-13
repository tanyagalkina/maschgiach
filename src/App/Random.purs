module App.Random ( component) where

import Prelude

import Data.Maybe (Maybe(..), maybe)
import Effect.Class (class MonadEffect)
import Effect.Random (random)
import Halogen as H
import Halogen.HTML as HH
import Halogen.HTML.Events as HE

-- import Halogen.HTML.Properties as HP
-- import Web.HTML.Event.EventTypes (offline)



type MyState  = Maybe Number

data MyAction = Regenerate

component::forall query input output m. MonadEffect m => H.Component query input output m 
component = H.mkComponent {
   initialState
  ,render: myRender
  ,eval: H.mkEval $ H.defaultEval { handleAction = myHandleAction}
}


-- THIS CANNOT BE USED WITH EFFECTS
-- componentNoEffect::forall query input output m. H.Component query input output m
-- componentNoEffect = H.mkComponent {
--    initialState
--   ,render: myRender
--   ,eval: H.mkEval $ H.defaultEval { handleAction = myHandeActionNoEffect}
-- }


initialState:: forall input. input -> MyState
initialState _ = Nothing

-- -----------------------------------
-- maybe x f Nothing == x
-- maybe x f (Just y) == f y

-- Takes a default value, a function, and a Maybe value. If the Maybe value is Nothing the default value is returned, otherwise the function is applied to the value inside the Just and the result is returned.


-- dont need MonadEffect constraint here, because dont have any child components
myRender :: forall m. MyState -> H.ComponentHTML MyAction () m
myRender state = do
  let value = maybe "No number generated yet" show state
  -- this div has no properties and 3 children
  HH.div_ 
     -- 1. child ( h1 )
     [  HH.h1_ 
        -- 1 subchild
        [ HH.text "Hello, Halogen! Random number"]
      -- 2. child ( p ) 
      , HH.p_
        -- 1 subchild
          [ HH.text ("Current value: " <> value) ]
      -- 3. child  ( button )
      , HH.button
        -- 1 property ( event )
          [ HE.onClick \_ -> Regenerate ]
        -- 1 child ( text )
          [ HH.text "Generate new number" ]
     ]     


-- Why do we need to use H.liftEffect here?
-- This worked without H.liftEffect in the previous example. ( Search )

-- liftEffect :: forall m a. MonadEffect m => Effect a -> m a
-- liftEffect is a function used to adapt a computation from the Effect monad into another monad that supports effects. 

myHandleAction :: forall output m. MonadEffect m => MyAction -> H.HalogenM MyState MyAction () output m Unit
myHandleAction = case _ of
  Regenerate -> do
    newNumber <- H.liftEffect random
    H.modify_ \_ -> Just newNumber

-- random :: Effect Number
-- Returns a random number between 0 (inclusive) and 1 (exclusive).
-- This is a direct wrapper around JavaScript's Math.random().

-- cannot use random here, because it is not a pure function
myHandeActionNoEffect :: forall output m. MyAction -> H.HalogenM MyState MyAction () output m Unit
myHandeActionNoEffect = case _ of
  Regenerate -> 
    H.modify_ \_ -> Just 42.0  


