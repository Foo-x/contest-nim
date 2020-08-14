include contestlib/imports
import contestlib

var
  N: int
  A: seq[int]
  mem = newSeqWith(3001, newSeqWith(3001, -1))

proc solve(i, j: int): int =
  if mem[i][j] != -1:
    return mem[i][j]
  if i == j:
    return 0

  if (N-(j-i)) mod 2 == 0:
    mem[i][j] = max(solve(i+1, j) + A[i], solve(i, j-1) + A[j-1])
  else:
    mem[i][j] = min(solve(i+1, j) - A[i], solve(i, j-1) - A[j-1])

  return mem[i][j]

when isMainModule:
  N = read(int)
  A = read(int, N)

  echo solve(0, N)
