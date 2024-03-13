module Data.ListEnglish (reallyMyProfiles) where

import Prelude
import Data.Maybe (Maybe(..))
import Data.Array.NonEmpty (NonEmptyArray, filter)
import Data.Array.NonEmpty as NEA


type 

myProfiles:: Maybe (NonEmptyArray String)
myProfiles = NEA.fromArray ["Perfect", "Good", "Brilliant", "Excellent", "Superb", "Great", "Wonderful", "Fantastic", "Amazing", "Awesome", "Incredible", "Unbelievable", "Magnificent", "Fabulous", "Terrific", "Splendid", "Marvelous", "Phenomenal", "Extraordinary", "Outstanding", "Impressive", "Sensational", "Remarkable", "Exceptional", "Stunning", "Astounding", "Stupendous", "Mind-blowing", "Breathtaking", "Astonishing", "Glorious", "Majestic", "Grand", "Magnificent", "Sublime", "Noble", "Elegant", "Exquisite", "Graceful", "Beautiful", "Lovely", "Charming", "Delightful", "Pleasant", "Enjoyable", "Good", "Nice", "Fine", "Decent", "Fair", "Satisfactory", "Adequate", "Acceptable", "Tolerable", "Passable", "OK", "All right", "Not bad", "So-so", "Mediocre", "Middling", "Ordinary", "Average", "Fair", "Common", "Usual", "Typical", "Conventional", "Standard", "Regular", "Normal", "Traditional", "Customary", "Routine", "Accustomed", "Familiar", "Wonted", "Habitual", "Everyday", "Commonplace", "Workaday", "Prosaic", "Unremarkable", "Unexceptional", "Undistinguished", "Uninspired", "Unexciting", "Uninteresting", "Boring", "Dull", "Tedious", "Tiresome", "Monotonous", "Unvaried", "Unvarying", "Unchanging"]

reallyProfiles :: Maybe (NonEmptyArray String) -> NonEmptyArray String
reallyProfiles (Just items) = items
reallyProfiles Nothing = NEA.cons "Nothing" (NEA.singleton "Nothing")

reallyMyProfiles :: NonEmptyArray String
reallyMyProfiles = reallyProfiles myProfiles