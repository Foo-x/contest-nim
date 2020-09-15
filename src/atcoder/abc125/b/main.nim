include contestlib/imports
import contestlib

var
  N = read(int)
  V = read(int, N)
  C = read(int, N)

echo V.zip(C).sortedByIt(it[0]).reversed.filterIt(it[0] > it[1]).mapIt(it[0] - it[1]).sum
