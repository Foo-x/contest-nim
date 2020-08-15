include contestlib/imports
import contestlib

var
  N: int
  K: int
  D: int

when isMainModule:
  N = read(int).abs()
  K = read(int)
  D = read(int)

  let
    t = N div D

  if t > K:
    echo N - D * K
  elif (K - t) mod 2 == 0:
    echo N - D * t
  else:
    echo abs(N - D * (t+1))
