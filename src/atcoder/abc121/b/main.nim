include contestlib/imports
import contestlib

var
  N, M, C = read(int)
  B = read(int, M)
  result = 0

N.loop:
  var
    A = read(int, M)

  if A.zip(B).mapIt(it[0] * it[1]).sum + C > 0:
    result += 1

echo result
