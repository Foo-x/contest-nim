include contestlib/imports
import contestlib

var
  (a, b, c, d) = read(int, int, int, int)

echo max(@[a*c, a*d, b*c, b*d])
