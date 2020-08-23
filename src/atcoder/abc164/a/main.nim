include contestlib/imports
import contestlib

var
  S = read(int)
  W = read(int)

if W >= S:
  echo "unsafe"
else:
  echo "safe"
