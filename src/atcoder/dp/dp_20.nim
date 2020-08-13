include contestlib/imports
import contestlib

var
  N: int
  S: seq[char]
  dp: seq[seq[int]]

when isMainModule:
  N = read(int)
  S = read(char, N-1)

  dp = newSeqWith(N, newSeqWith(N, 0))

  for i in 0..<N:
    dp[0][i] = 1

  for i in 0..<N-1:
    var sum = newSeqWith(N-i+1, 0)
    for j in 0..<N-i:
      sum[j+1] = sum[j] + dp[i][j]
      sum[j+1].mod= MOD

    if S[i] == '<':
      for j in 0..<N-i:
        dp[i+1][j] = sum[N-i] - sum[j+1]
        dp[i+1][j].sumMod= MOD
    else:
      for j in 0..<N-i:
        dp[i+1][j] = sum[j+1]

  echo dp[N-1][0]
