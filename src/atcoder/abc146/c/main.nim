include contestlib/imports
import contestlib
import contestlib/calgorithm

var
  (A, B, X) = read(int, int, int)

echo maxMatch(1, 10^9, n => n * A + B * (n.float.log10.int + 1) <= X)
