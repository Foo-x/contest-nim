include contestlib/imports
import contestlib

var
  N = read(int)
  H = read(int, N)
  cur = H[0]
  curResult = 0
  result = 0

for h in H[1..^1]:
  if h <= cur:
    curResult += 1
    result.max= curResult
  else:
    curResult = 0
  cur = h

echo result
