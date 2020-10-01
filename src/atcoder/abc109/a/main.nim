include contestlib/imports
import contestlib

var
  A, B = read(int)

if A mod 2 == 0 or B mod 2 == 0:
  echo "No"
else:
  echo "Yes"
