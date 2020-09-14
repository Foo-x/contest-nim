include contestlib/imports
import contestlib

var
  (r, D, x) = read(int, int, int)

10.loop:
  x = r * x - D
  echo x
