include contestlib/imports
import contestlib
import contestlib/math/prime

var
  N: int

when isMainModule:
  N = read(int)

  var result = 0
  for k, v in N.primeFactorize.pairs:
    var
      i = 1
      v = v
    while i <= v:
      result += 1
      v -= i
      i += 1

  echo result
