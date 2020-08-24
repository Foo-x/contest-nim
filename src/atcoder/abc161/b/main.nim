include contestlib/imports
import contestlib

var
  N = read(int)
  M = read(int)
  A = read(int, N)
  sum = A.sum

if A.filterIt(it * 4 * M >= sum).len >= M:
  echo "Yes"
else:
  echo "No"
