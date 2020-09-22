include contestlib/imports
import contestlib

var
  N = read(int)
  L = read(int, N).sorted

if L[0..^2].sum > L[^1]:
  echo "Yes"
else:
  echo "No"
