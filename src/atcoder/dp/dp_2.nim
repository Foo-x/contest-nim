include contestlib/imports
import contestlib

var
  mem = newSeqWith(100_000, int.high)
  N: int
  K: int
  H: seq[int]

proc solve(n: int): int =
  if mem[n] != int.high:
    return mem[n]

  if n == 0:
    return 0
  if n == 1:
    mem[n] = abs(H[1] - H[0])
    return mem[n]

  for i in 1..K:
    if i > n:
      continue
    mem[n].min= abs(H[n] - H[n-i]) + solve(n - i)

  return mem[n]

when isMainModule:
  N = read(int)
  K = read(int)
  H = read(int, N)

  echo solve(N-1)
