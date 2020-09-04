import strutils, sequtils, algorithm

var
  N = stdin.readLine.parseInt
  L = stdin.readLine.split.map(parseInt).sorted
  result = 0

for i in 0..<N:
  let a = L[i]
  for j in i+1..<N:
    let
      b = L[j]
      cnt = L.lowerBound(a+b)
    if cnt != 0:
      result += cnt - j - 1

echo result
