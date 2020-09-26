include contestlib/imports
import contestlib

var
  (N, T, A) = read(int, float, float)
  H = read(float, N)
  result = 0
  resultT = 1000.0

for i, h in H:
  var
    t = T - h * 0.006
    d = abs(A - t)

  if d < resultT:
    result = i+1
    resultT = d

echo result
