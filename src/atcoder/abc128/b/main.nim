include contestlib/imports
import contestlib

var
  N = read(int)
  L = newSeq[(string, int, int)](N)

for i in 0..<N:
  let
    (S, P) = read(string, int)

  L[i] = (S, P, i+1)

proc sortFunc(x, y: (string, int, int)): int =
  if x[0] < y[0]:
    -1
  elif x[0] > y[0]:
    1
  else:
    y[1] - x[1]

L.sort(sortFunc)

for l in L:
  echo l[2]
