include contestlib/imports
import contestlib

var
  (N, R) = read(int, int)

if N >= 10:
  echo R
else:
  echo R + 100 * (10 - N)
