module Hello exposing (..)

import Html exposing (text)

divide : Float -> Float -> Float
divide x y =
  x / y


type Answer = Yes | No

respond : Answer -> String
respond answer =
  if answer == Yes then "OUI OUI OUI" else "NON NON NON"

main =
  text("Hello " ++ respond Yes ++ respond No)
