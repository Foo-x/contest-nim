include contestlib/imports
import contestlib

var
  N, K = read(int)
  n1 = (N div K)^3
  n2 =
    if K mod 2 == 1:
      0
    else:
      ((N + K div 2) div K)^3

echo n1 + n2
