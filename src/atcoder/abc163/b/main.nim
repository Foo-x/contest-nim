include contestlib/imports
import contestlib

var
  N = read(int)
  M = read(int)
  A = read(int, M)
  sum = A.sum

if sum > N:
  echo -1
else:
  echo N - sum
