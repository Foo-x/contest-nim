include contestlib/imports
import contestlib

var
  X, N: int
  P: seq[int]

when isMainModule:
  X = read(int)
  N = read(int)
  P = read(int, N)

  if X notin P or N == 0:
    echo X
    quit()

  var i = 1
  while true:
    if X-i notin P:
      echo X-i
      quit()
    elif X+i notin P:
      echo X+i
      quit()

    i += 1
