include contestlib/imports
import contestlib

var
  (a, b, x) = read(float, float, float)

if a^2*b/2 <= x:
  echo arctan((2*a^2*b-2*x) / a^3).radToDeg
else:
  echo arctan(a*b^2 / (2*x)).radToDeg
