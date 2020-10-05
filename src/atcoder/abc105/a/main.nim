include contestlib/imports
import contestlib

var
  N, K = read(int)

if N mod K == 0:
  echo 0
else:
  echo 1
