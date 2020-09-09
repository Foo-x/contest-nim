include contestlib/imports
import contestlib
import contestlib/bitset

proc check(A: seq[int], m:int, bit: int): bool =
  bit.keys().mapIt(A[it]).sum == m

when isMainModule:
  var
    n = read(int)
    A = read(int, n)
    q = read(int)
    M = read(int, q)

  for m in M:
    var isOk = (0..<(1 shl n)).anyIt(check(A, m, it))
    if isOk:
      echo "yes"
    else:
      echo "no"
