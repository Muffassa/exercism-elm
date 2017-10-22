module Bob exposing (..)
import String

hey: String -> String
hey appeal =
  if isYell appeal && not (isSilence appeal) then
    "Whoa, chill out!"
  else if isAsk appeal then
    "Sure."
  else if isSilence appeal then
    "Fine. Be that way!"
  else
    "Whatever."

isAsk: String -> Bool
isAsk text = String.endsWith "?" text

isYell: String -> Bool
isYell text
  = String.toUpper text == text && text /= String.toLower text

isSilence: String -> Bool
isSilence text =
  String.trim text == ""