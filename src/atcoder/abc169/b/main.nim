include contestlib/imports
import contestlib

var
  N: int
  A: seq[int]

when isMainModule:
  N = read(int)
  A = read(int, N)

  if 0 in A:
    echo 0
    quit()

  var result = 1
  for a in A:
    if result > 1e18.int div a:
      echo -1
      quit()

    result *= a

  echo result
