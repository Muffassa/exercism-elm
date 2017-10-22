module Accumulate exposing (..)
import List

accumulate : (a -> b) -> List a -> List b
accumulate f list =
  case list of
    [] -> []
    x::xs -> f x :: accumulate f xs