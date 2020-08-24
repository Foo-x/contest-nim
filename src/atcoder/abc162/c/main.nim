import math, strutils

var
  K = stdin.readLine.parseInt
  result = 0

for i in 1..K:
  for j in 1..K:
    for k in 1..K:
      result += i.gcd(j).gcd(k)

echo result
