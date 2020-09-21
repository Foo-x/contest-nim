include contestlib/imports
import contestlib

var
  N, M = read(int)
  result = newSeq[int](M)

N.loop:
  var
    K = read(int)

  K.loop:
    result[read(int)-1] += 1

echo result.count(N)
