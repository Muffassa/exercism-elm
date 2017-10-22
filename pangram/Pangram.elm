module Pangram exposing (..)
import String

isPangram: String -> Bool
isPangram sentence =
  let
    alphabet: String
    alphabet = "abcdefghijklmnopqrstuvwxyz"
  in
    isStringContainsAllChars sentence alphabet

isStringContainsAllChars: String -> String -> Bool
isStringContainsAllChars sentence list =
  case String.length list of
    0 -> True
    _ ->
      if String.contains (String.left 1 list) (String.toLower sentence) then
        isStringContainsAllChars sentence (String.dropLeft 1 list)
      else
        False