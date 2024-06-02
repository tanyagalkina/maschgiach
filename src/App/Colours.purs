module App.Colours (crimsonred, brown, green, marine, nogrey, skyblue, softred, brightred, yellow, orange, black,
red, lightred, violet, white) where

import CSS.Color (Color, rgba)

orange :: Color
orange = rgba 255 165 0 1.0

red :: Color
red = rgba 255 0 0 0.8

green :: Color
green = rgba 0 255 0 0.8


softred :: Color
softred = rgba 205 92 92 1.0 

crimsonred :: Color
crimsonred = rgba 220 20 60 1.0

lightred :: Color
lightred = rgba 255 0 0 0.8

beige :: Color
beige = rgba 210 180 140 0.8

marine :: Color
marine = rgba 39 156 136 0.9

skyblue :: Color
skyblue = rgba 135 206 235 1.0
-- Lavender: rgba(230, 230, 250, 1.0)

peach :: Color
peach = rgba 255 218 185 1.0
-- Peach: rgba(255, 218, 185, 1.0)
-- Beige: rgba(245, 245, 220, 1.0)

mintcream :: Color
mintcream = rgba 245 255 250 1.0  
-- Mint Cream: rgba(245, 255, 250, 1.0)

blue :: Color
-- blue = rgba 0 0 255 0.8
blue  = rgba 0 0 188 0.5

dark_yellow :: Color
dark_yellow = rgba 205 141 0 0.583

grey :: Color
grey = rgba 185 185 187 0.8

nogrey :: Color
nogrey = rgba 185 185 187 0.3

israelblue :: Color
israelblue = rgba 21 72 189 0.8

black :: Color
black = rgba 0 0 0 1.0

yellow :: Color
-- yellow = rgba 235 185 0 0.610
yellow = rgba 250 180 0 0.307

salad :: Color
salad = rgba 173 255 0 0.735

brown :: Color
brown = rgba 118 18 18 1.0

brightred :: Color
brightred = rgba 255 69 0 1.0

violet :: Color
violet = rgba 50 23 138 1.0

white :: Color
white = rgba 255 255 255 1.0
