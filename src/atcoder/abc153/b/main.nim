include contestlib/imports
import contestlib

var
  (H, N) = read(int, int)
  A = read(int, N)

if A.sum >= H:
  echo "Yes"
else:
  echo "No"
