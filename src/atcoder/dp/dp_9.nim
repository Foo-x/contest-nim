include contestlib/imports
import contestlib

var
  N: int
  P: seq[float]
  mem = newSeqWith(3000, newSeqWith(3000, -1.0))

proc solve(i, j: int): float =
  if i < 0 or j < 0:
    return 0
  if i == 0 and j == 1:
    return P[0]
  if i == 0 and j == 0:
    return 1 - P[0]
  if mem[i][j] != -1.0:
    return mem[i][j]

  mem[i][j] = solve(i-1, j-1) * P[i] + solve(i-1, j) * (1 - P[i])
  return mem[i][j]

when isMainModule:
  N = read(int)
  P = read(float, N)

  echo (((N div 2) + 1)..N).toSeq.mapIt(solve(N-1, it)).sum
