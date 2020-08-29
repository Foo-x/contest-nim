var
  S = stdin.readLine
  T = stdin.readLine
  l = T.len
  result = 1001

proc calcDist(a, b: string): int =
  for i, c in a:
    if b[i] != c:
      result += 1

for i in 0..S.len-l:
  result = min(result, S[i..<i+l].calcDist(T))
  if result == 0:
    echo 0
    quit()

echo result
