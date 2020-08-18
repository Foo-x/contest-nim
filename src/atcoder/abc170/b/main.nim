include contestlib/imports
import contestlib

var
  X, Y: int

when isMainModule:
  X = read(int)
  Y = read(int)

  for i in 0..X:
    if 2 * i + 4 * (X-i) == Y:
      echo "Yes"
      quit()

  echo "No"
