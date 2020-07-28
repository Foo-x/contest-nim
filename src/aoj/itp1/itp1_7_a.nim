include contestlib/imports
import contestlib

when isMainModule:
  while true:
    var
      m = read(int)
      f = read(int)
      r = read(int)

    if m == -1 and f == -1 and r == -1:
      break

    if m == -1 or f == -1:
      echo "F"
      break

    let sum = m + f
    if sum >= 80:
      echo "A"
    elif sum >= 65:
      echo "B"
    elif sum >= 50:
      echo "C"
    elif sum >= 30 and r >= 50:
      if r >= 50:
        echo "C"
      else:
        echo "D"
    else:
      echo "F"
