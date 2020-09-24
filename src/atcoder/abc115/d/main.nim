include contestlib/imports
import contestlib

var
  N, X = read(int)
  mem = newSeq[string](N+1)

proc lenBurger(i: int): int =
  2^(i+2) - 3

proc countPatty(i: int): int =
  2^(i+1) - 1

proc solve(i, x: int): int =
  if x == 1:
    return 0
  if i == 1:
    return "BPPPB"[0..<x].count("P")
  if x == lenBurger(i):
    return countPatty(i)

  let
    center = lenBurger(i) div 2 + 1

  if x == center:
    return solve(i-1, x-2) + 1
  if x < center:
    return solve(i-1, x-1)

  return countPatty(i) div 2 + 1 + solve(i-1, x - center)

echo solve(N, X)
