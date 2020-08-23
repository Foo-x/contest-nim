include contestlib/imports
import contestlib

var
  A = read(int)
  B = read(int)
  C = read(int)
  D = read(int)
  nA = ceil C / B
  nC = ceil A / D

if nA <= nC:
  echo "Yes"
else:
  echo "No"
