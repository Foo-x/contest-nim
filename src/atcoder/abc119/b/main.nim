include contestlib/imports
import contestlib

var
  N = read(int)
  XU = read(N, float, string)
  sum = 0.0

for (x, u) in XU:
  if u == "JPY":
    sum += x
  else:
    sum += x * 380000

echo sum
