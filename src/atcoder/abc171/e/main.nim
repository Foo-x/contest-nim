include contestlib/imports
import contestlib

var
  N: int
  A: seq[int]

when isMainModule:
  N = read(int)
  A = read(int, N)

  let allXor = A.foldl(a xor b)

  echo A.mapIt(it xor allXor).join(" ")
