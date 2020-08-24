import strutils

var
  N = stdin.readLine.parseInt
  result = 0

for i in 1..N:
  if i mod 3 != 0 and i mod 5 != 0:
    result += i

echo result
