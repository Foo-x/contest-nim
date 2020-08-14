include contestlib/imports
import contestlib

var
  N: int
  K: int
  A: seq[int]
  dp: array[0..101, array[0..100_001, int]]

when isMainModule:
  N = read(int)
  K = read(int)
  A = read(int, N)

  for i in 0..N:
    dp[i][0] = 1

  for i in 1..N:
    for j in 1..K:
      dp[i][j] = (dp[i][j-1] + dp[i-1][j]) mod MOD

      if j - A[i-1] - 1 >= 0:
        dp[i][j] = (dp[i][j] + MOD - dp[i-1][j-A[i-1]-1]) mod MOD

  echo dp[N][K]
