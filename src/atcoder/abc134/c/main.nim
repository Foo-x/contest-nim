include contestlib/imports
import contestlib

var
  N = read(int)
  A = read(int, N)
  max = A.max
  cnt = A.count(max)

if cnt > 1:
  echo A.mapIt(max).join("\n")
  quit()

let
  next = A.filterIt(it != max).max

for a in A:
  if a == max:
    echo next
  else:
    echo max
