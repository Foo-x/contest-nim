include contestlib/imports
import contestlib

var
  N: int
  W: int
  P: seq[seq[int]]
  mem = newSeqWith(101, newSeqWith(100_001, -1))

proc solve(n, v: int): int =
  if v == 0:
    return 0
  if n == -1:
    return InfInt
  if mem[n][v] != -1:
    return mem[n][v]

  if v >= P[n][1]:
    mem[n][v] = min(solve(n-1, v-P[n][1]) + P[n][0], solve(n-1, v))
  else:
    mem[n][v] = solve(n-1, v)

  return mem[n][v]

when isMainModule:
  N = read(int)
  W = read(int)
  P = read(int, N, 2)

  for v in countdown(100_000, 0):
    if solve(N-1, v) <= W:
      echo v
      break
