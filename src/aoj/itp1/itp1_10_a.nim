include contestlib/imports
import contestlib

when isMainModule:
  var
    x1 = read(int).toFloat
    y1 = read(int).toFloat
    x2 = read(int).toFloat
    y2 = read(int).toFloat

  echo sqrt((x2 - x1)^2 + (y2 - y1)^2)
