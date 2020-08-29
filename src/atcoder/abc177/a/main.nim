include contestlib/imports
import contestlib

var
  (D, T, S) = read(int, int, int)

if D / S <= T.float:
  echo "Yes"
else:
  echo "No"
