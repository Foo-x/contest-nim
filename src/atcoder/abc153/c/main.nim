include contestlib/imports
import contestlib

var
  (N, K) = read(int, int)
  H = read(int, N).sorted(Descending)

if N <= K:
  echo 0
else:
  echo H[K..^1].sum
