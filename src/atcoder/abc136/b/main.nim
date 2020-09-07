import strutils, math

var
  N = stdin.readLine.parseInt
  result = 0

for i in 1..N:
  if i.float.log10.int mod 2 == 1:
    continue

  result += 1

echo result
