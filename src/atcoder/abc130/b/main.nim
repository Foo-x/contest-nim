include contestlib/imports
import contestlib

var
  (N, X) = read(int, int)
  L = read(int, N).cumsummed

echo L.filterIt(it <= X).len + 1
