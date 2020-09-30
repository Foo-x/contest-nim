include contestlib/imports
import contestlib

var
  N, M, X, Y = read(int)
  XX = read(int, N)
  YY = read(int, M)
  maxX = XX.max
  minY = YY.min

for z in X+1..Y:
  if maxX < z and minY >= z:
    echo "No War"
    quit()

echo "War"
