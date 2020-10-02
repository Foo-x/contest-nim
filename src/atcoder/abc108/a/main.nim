import strutils, math

var
  K = stdin.readLine.parseInt
  hK = K div 2

if K mod 2 == 0:
  echo hK^2
else:
  echo hK * (hK+1)
