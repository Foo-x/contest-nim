import strutils, sequtils, math

var
  N = stdin.readLine.parseInt
  B = stdin.readLine.split.map(parseInt)
  result = newSeqUninitialized[int](N)

result[0] = B[0]
result[N-1] = B[N-2]

for i in 1..<N-1:
  result[i] = min(B[i-1], B[i])

echo result.sum
