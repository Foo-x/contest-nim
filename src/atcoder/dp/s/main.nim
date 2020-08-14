include contestlib/imports
import contestlib

var
  K: seq[int]
  D: int
  dp: array[0..10_001, array[0..1, array[0..101, int]]]

when isMainModule:
  K = read(string).mapIt(($it).parseInt)
  D = read(int)

  dp[0][0][0] = 1

  for digit in 0..<K.len:
    for d in 0..<D:
      for i in 0..9:
        dp[digit+1][1][(d+i) mod D] = (dp[digit+1][1][(d+i) mod D] + dp[digit][1][d]) mod MOD

      for i in 0..<K[digit]:
        dp[digit+1][1][(d+i) mod D] = (dp[digit+1][1][(d+i) mod D] + dp[digit][0][d]) mod MOD

      dp[digit+1][0][(d+K[digit]) mod D] = dp[digit][0][d]

  let result = dp[K.len][0][0] + dp[K.len][1][0] - 1
  if result < 0:
    echo (result + MOD) mod MOD
  else:
    echo result mod MOD
