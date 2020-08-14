include contestlib/imports
import contestlib

var mem = newSeqWith[int](100_000, -1)

proc solve(H: openArray[int], n: int): int =
  if mem[n] != -1:
    return mem[n]

  if n == 0:
    return 0
  if n == 1:
    mem[n] = abs(H[1] - H[0])
    return mem[n]

  mem[n] = min(abs(H[n] - H[n-1]) + solve(H, n - 1), abs(H[n] - H[n-2]) + solve(H, n-2))
  return mem[n]

when isMainModule:
  var
    N = read(int)
    H = read(int, N)

  echo solve(H, N-1)
