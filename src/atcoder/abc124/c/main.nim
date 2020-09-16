import sequtils

var
  S = stdin.readLine
  A = @['0', '1'].cycle(S.len)[0..<S.len]
  B = @['1', '0'].cycle(S.len)[0..<S.len]

proc diff(X: openArray[char]): int =
  for i in 0..<S.len:
    if S[i] != X[i]:
      result += 1

echo min(A.diff, B.diff)
