include contestlib/imports
import contestlib

when isMainModule:
  var
    n = read(int)
    d = read(int)
    result = 0

  n.loop:
    var
      x = read(int)
      y = read(int)

    if sqrt(x.toFloat^2 + y.toFloat^2) <= d.toFloat:
      result += 1

  echo result
