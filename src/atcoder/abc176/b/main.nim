include contestlib/imports
import contestlib

var
  N = read(string)
  s: int

for c in N:
  s += ($c).parseInt

if s mod 9 == 0:
  echo "Yes"
else:
  echo "No"
