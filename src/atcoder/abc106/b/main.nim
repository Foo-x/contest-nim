import strutils
import contestlib/math/prime

var
  N = stdin.readLine.parseInt
  result = 0

for n in countup(1, N, 2):
  if n.getDivisors.len == 8:
    result += 1

echo result
