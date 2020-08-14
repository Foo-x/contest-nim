include contestlib/imports
import contestlib

var
  N: int
  X: seq[seq[int]]
  mem: array[0..100_000, array[0..2, int]]

proc solve(i, j: int): int =
  if mem[i][j] != 0:
    return mem[i][j]

  if i == 0:
    return X[0][j]

  for k in (0..2).toSeq.filterIt(it != j):
    mem[i][j].max= X[i][j] + solve(i-1, k)

  return mem[i][j]

when isMainModule:
  N = read(int)
  X = newSeqWith(N, newSeq[int](3))

  for i in 0..<N:
    for j in 0..2:
      X[i][j] = read(int)

  echo (0..2).toSeq.mapIt(solve(N-1, it)).max
