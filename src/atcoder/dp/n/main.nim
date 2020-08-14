include contestlib/imports
import contestlib

var
  N: int
  A: seq[int]
  cumsummedA: seq[int]
  mem = newSeqWith(401, newSeqWith(401, -1))

proc solve(i, j: int): int =
  if i == j:
    return 0
  if mem[i][j] != -1:
    return mem[i][j]

  mem[i][j] = InfInt
  for k in i..<j:
    mem[i][j].min= solve(i, k) + solve(k+1, j)

  mem[i][j] += cumsummedA[j] - (if i == 0: 0 else: cumsummedA[i-1])

  return mem[i][j]

when isMainModule:
  N = read(int)
  A = read(int, N)
  cumsummedA = A.cumsummed

  echo solve(0, N-1)
