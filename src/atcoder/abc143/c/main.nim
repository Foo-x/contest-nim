discard stdin.readLine

var
  S = stdin.readLine
  cur = S[0]
  result = 1

for c in S:
  if c != cur:
    cur = c
    result += 1

echo result
