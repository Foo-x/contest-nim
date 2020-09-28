include contestlib/imports
import contestlib

var
  N, T = read(int)
  result = 10000

N.loop:
  let
    c, t = read(int)

  if t > T:
    continue

  result.min= c

if result == 10000:
  echo "TLE"
else:
  echo result
