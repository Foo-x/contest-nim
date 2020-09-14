include contestlib/imports
import contestlib

var
  (N, M) = read(int, int)
  (L, R) = read(M, int, int)
  l = L.max
  r = R.min

echo max(r - l + 1, 0)
