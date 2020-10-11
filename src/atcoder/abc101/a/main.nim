var
  S = stdin.readLine
  result = 0

for c in S:
  if c == '+':
    result += 1
  else:
    result -= 1

echo result
