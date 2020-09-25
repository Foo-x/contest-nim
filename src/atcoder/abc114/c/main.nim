import strutils, sequtils, math, sets

const
  chars = ['3', '5', '7']

var
  N = stdin.readLine.parseInt
  d = N.float.log10.int

if d < 2:
  echo 0
  quit()

var
  result = initHashSet[int]()

proc toTernary(n, d: int): seq[int] =
  var n = n
  result = newSeqUninitialized[int](d)
  for i in 1..d:
    result[^i] = n mod 3
    n = n div 3

for i in 2..d:
  for j in 0..<3^(i+1):
    var
      ternary = toTernary(j, i+1)

    if not (ternary.contains(0) and ternary.contains(1) and ternary.contains(2)):
      continue

    var n = cast[string](ternary.mapIt(chars[it])).parseInt
    if n <= N:
      result.incl n

echo result.len
