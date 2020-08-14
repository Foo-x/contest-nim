include contestlib/imports
import contestlib
import contestlib/tree/bit

var
  N: int
  H: seq[int]
  A: seq[int]

when isMainModule:
  N = read(int)
  H = read(int, N)
  A = read(int, N)

  var tree = newMaxBIT[int](N)
  for i in 0..<N:
    let maxUntilI = tree.until(H[i])
    if maxUntilI == NegInfInt:
      tree.update(H[i], A[i])
    else:
      tree.update(H[i], maxUntilI + A[i])

  echo tree.until N
