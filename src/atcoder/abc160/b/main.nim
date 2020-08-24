import strutils

let
  X = stdin.readLine.parseInt
  n500 = X div 500
  m500 = X mod 500
  n5 = m500 div 5

echo n500 * 1000 + n5 * 5
