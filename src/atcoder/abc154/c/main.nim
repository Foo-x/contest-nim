include contestlib/imports
import contestlib

var
  N = read(int)
  A = read(int, N)

if A.len == A.toHashSet().len:
  echo "YES"
else:
  echo "NO"
