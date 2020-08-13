include contestlib/imports
import contestlib

var
  N: int
  K: int
  A: seq[int]
  dp: array[0..100_001, bool]

when isMainModule:
  N = read(int)
  K = read(int)
  A = read(int, N)

  let minA = A.min

  for i in 0..K:
    if minA > i:
      continue

    if A.filterIt(it <= i).any(x => not dp[i-x]):
      dp[i] = true

  if dp[K]:
    echo "First"
  else:
    echo "Second"
