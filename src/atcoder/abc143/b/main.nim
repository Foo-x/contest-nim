import strutils, sequtils

let
  N = stdin.readLine.parseInt
  D = stdin.readLine.split.map(parseInt)

var
  result = 0

for i in 0..<N:
  for j in i+1..<N:
    result += D[i] * D[j]

echo result
