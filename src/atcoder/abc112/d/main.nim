include contestlib/imports
import contestlib
import contestlib/math/prime

var
  N, M = read(int)

if N == 1:
  echo M
  quit()

if N == M:
  echo 1
  quit()

var
  max = M div N

echo M.getDivisors().filterIt(it <= max)[^1]
