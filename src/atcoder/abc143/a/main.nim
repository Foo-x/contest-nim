import strutils, sequtils

let
  I = stdin.readLine.split.map(parseInt)

echo max(I[0] - 2 * I[1], 0)
