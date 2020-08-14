include contestlib/imports
import contestlib

when isMainModule:
  var
    n = read(int)

  var t, x, y = 0
  n.loop:
    var
      ti = read(int)
      xi = read(int)
      yi = read(int)

    var
      dt = ti - t
      dx = abs(xi - x)
      dy = abs(yi - y)

    var remT = dt - dx - dy
    if remT < 0 or remT mod 2 != 0:
      echo "No"
      quit()

    t = ti
    x = xi
    y = yi

  echo "Yes"
