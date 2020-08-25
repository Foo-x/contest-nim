include contestlib/imports
import contestlib

var
  (N, A, B) = read(int, int, int)
  cnt = N div (A+B)
  m = N mod (A+B)

echo cnt * A + min(m, A)
