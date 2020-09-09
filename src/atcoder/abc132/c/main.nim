include contestlib/imports
import contestlib

var
  N = read(int)
  D = read(int, N).sorted
  hN = N div 2

echo D[hN] - D[hN-1]
