include contestlib/imports
import contestlib

var
  N = read(int)
  H = read(int, N).reversed
  m = 10^9

for h in H:
  if h > m + 1:
    echo "No"
    quit()

  m.min= h

echo "Yes"
