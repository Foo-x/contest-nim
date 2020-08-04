include contestlib/imports
import contestlib

proc isPrime(n: int): bool =
  let rt = n.toFloat.sqrt
  let frt = rt.floor
  if rt == frt:
    return false

  for i in 2..frt.toInt:
    if n mod i == 0:
      return false

  return true

when isMainModule:
  var
    n = read(int)
    A = read(int, n)

  echo A.filter(isPrime).len
