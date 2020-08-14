include contestlib/imports
import contestlib

var
  N: int
  W: int
  P: seq[seq[int]]
  mem = newSeqWith(101, newSeqWith(100_001, -1))

proc solve(n, w: int): int =
  if n == 0 and P[0][0] <= w:
    return P[0][1]

  if n == 0:
    return 0

  if mem[n][w] != -1:
    return mem[n][w]

  if w >= P[n][0]:
    mem[n][w] = max(solve(n-1, w-P[n][0]) + P[n][1], solve(n-1, w))
  else:
    mem[n][w] = solve(n-1, w)

  return mem[n][w]

when isMainModule:
  N = read(int)
  W = read(int)
  P = read(int, N, 2)

  echo solve(N-1, W)
