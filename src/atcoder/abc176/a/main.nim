include contestlib/imports
import contestlib

var
  N = read(int)
  X = read(int)
  T = read(int)
  a = N div X
  m = N mod X

if m == 0:
  echo a * T
else:
  echo (a + 1) * T
