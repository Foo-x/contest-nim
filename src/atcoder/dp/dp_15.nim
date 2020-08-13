include contestlib/imports
import contestlib

var
  N: int
  A: seq[seq[int]]
  mem = newSeqWith(21, newSeqWith(1 shl 21, -1))

proc solve(i, j: int): int =
  if i < 0:
    return 1
  if mem[i][j] != -1:
    return mem[i][j]

  mem[i][j] = 0

  for k in 0..<N:
    if A[i][k] == 1 and j.testBit(k):
      mem[i][j] = (mem[i][j] + solve(i-1, j xor (1 shl k))) mod MOD

  return mem[i][j]

when isMainModule:
  N = read(int)
  A = read(int, N, N)

  echo solve(N-1, 1 shl N - 1)
