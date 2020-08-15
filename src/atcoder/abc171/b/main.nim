include contestlib/imports
import contestlib

var
  N: int
  K: int
  P: seq[int]

when isMainModule:
  N = read(int)
  K = read(int)
  P = read(int, N).sorted

  echo P[0..<K].sum
