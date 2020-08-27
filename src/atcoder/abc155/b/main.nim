include contestlib/imports
import contestlib

var
  N = read(int)
  A = read(int, N)

if A.filterIt(it mod 2 == 0).allIt(it mod 3 == 0 or it mod 5 == 0):
  echo "APPROVED"
else:
  echo "DENIED"
