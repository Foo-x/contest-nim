include contestlib/imports
import contestlib

var
  s = read(string)
  t = read(string)

if t[0..^2] == s:
  echo "Yes"
else:
  echo "No"
