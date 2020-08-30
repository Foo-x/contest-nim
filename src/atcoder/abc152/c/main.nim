include contestlib/imports
import contestlib

var
  N = read(int)
  P = read(int, N)
  m = N + 1
  result = 0

for i in 0..<N:
  m.min= P[i]
  if P[i] <= m:
    result += 1

echo result
