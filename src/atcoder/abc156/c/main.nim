include contestlib/imports
import contestlib

var
  N = read(int)
  X = read(int, N)

let
  g = (X.sum / X.len).toInt

echo X.mapIt((it - g)^2).sum
