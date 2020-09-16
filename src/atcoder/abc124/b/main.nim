include contestlib/imports
import contestlib

var
  N = read(int)
  H = read(int, N)
  max = 0
  result = 0

for h in H:
  if h >= max:
    result += 1
  max.max= h

echo result
