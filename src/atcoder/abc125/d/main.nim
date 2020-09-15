include contestlib/imports
import contestlib

var
  N = read(int)
  A = read(int, N)
  minusCnt = A.filterIt(it < 0).len
  B = A.mapIt(it.abs)

if minusCnt mod 2 == 0:
  echo B.sum
else:
  echo B.sum - 2 * B.min
