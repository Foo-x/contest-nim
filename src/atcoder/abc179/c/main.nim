import strutils, sequtils, math, sugar
import contestlib/algorithm

var
  N = stdin.readLine.parseInt
  result = 0

for i in 1..<N:
  result += maxMatch(1, N, x => N - i*x > 0)

echo result
