module Raindrops exposing (..)

raindrops: Int -> String
raindrops number =
  let
    pling = if isDevidingBy 3 number then "Pling" else ""
    plang = if isDevidingBy 5 number then "Plang" else ""
    plong = if isDevidingBy 7 number then "Plong" else ""
    result = pling ++ plang ++ plong
  in
    if result == "" then toString number else result

isDevidingBy: Int -> Int -> Bool
isDevidingBy divider number =
  number % divider == 0

