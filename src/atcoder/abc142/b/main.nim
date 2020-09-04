include contestlib/imports
import contestlib

var
  (N, K) = read(int, int)
  H = read(int, N)

echo H.filterIt(it >= K).len
