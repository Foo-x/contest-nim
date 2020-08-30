include contestlib/imports
import contestlib

var
  (N, K, M) = read(int, int, int)
  A = read(int, N-1)
  result = M * N - A.sum

if result > K:
  echo -1
elif result < 0:
  echo 0
else:
  echo result
