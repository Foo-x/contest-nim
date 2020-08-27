include contestlib/imports
import contestlib

var
  N = read(int, 3).toHashSet

if N.len == 2:
  echo "Yes"
else:
  echo "No"
