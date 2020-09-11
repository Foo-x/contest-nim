include contestlib/imports
import contestlib

var
  (W, H, x, y) = read(int, int, float, float)
  M = W * H / 2

if x == W / 2 and y == H / 2:
  echo M, " ", 1
else:
  echo M, " ", 0
