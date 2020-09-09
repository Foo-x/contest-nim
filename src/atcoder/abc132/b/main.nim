include contestlib/imports
import contestlib

var
  N = read(int)
  P = read(int, N)
  result = 0

for i in 1..<N-1:
  if P[i-1..i+1].sorted[1] == P[i]:
    result += 1

echo result
