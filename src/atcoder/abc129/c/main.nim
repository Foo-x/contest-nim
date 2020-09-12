include contestlib/imports
import contestlib

var
  (N, M) = read(int, int)
  A = read(int, M).toHashSet()
  dp = newSeq[int](N+1)

dp[0] = if 0 in A: 0 else: 1
dp[1] = if 1 in A: 0 else: dp[0]

for i in 2..N:
  if i in A:
    dp[i] = 0
  else:
    dp[i] = (dp[i-1] + dp[i-2]) mod MOD

echo dp[N]
