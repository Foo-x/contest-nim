include contestlib/imports
import contestlib

var
  (N, K) = read(int, int)
  result = 1

while N div K != 0:
  result += 1
  N = N div K

echo result
