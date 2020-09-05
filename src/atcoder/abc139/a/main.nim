import sequtils

var
  S = stdin.readLine
  T = stdin.readLine
  result = 0

for (s, t) in zip(S, T):
  if s == t:
    result += 1

echo result
