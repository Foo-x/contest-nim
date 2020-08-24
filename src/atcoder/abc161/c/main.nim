include contestlib/imports
import contestlib

var
  N = read(int)
  K = read(int)
  m = N mod K
  subtracted = abs m - K

echo min(m, subtracted)
