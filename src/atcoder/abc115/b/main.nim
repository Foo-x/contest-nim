include contestlib/imports
import contestlib

var
  N = read(int)
  P = read(int, N).sorted

echo P.sum - P[^1] div 2
