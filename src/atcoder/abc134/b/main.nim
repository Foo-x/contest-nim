include contestlib/imports
import contestlib

var
  (N, D) = read(int, int)

echo (N / (D*2 + 1)).ceil.int
