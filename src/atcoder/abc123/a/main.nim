include contestlib/imports
import contestlib

var
  I = read(int, 5)
  k = read(int)
  max = I[^1] - I[0]

if max <= k:
  echo "Yay!"
else:
  echo ":("
