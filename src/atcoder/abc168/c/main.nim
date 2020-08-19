include contestlib/imports
import contestlib

var
  A, B, H, M: float

when isMainModule:
  A = read(int).toFloat
  B = read(int).toFloat
  H = read(int).toFloat
  M = read(int).toFloat

  let
    xa = A*cos(PI / 4 - H * PI / 6 - (M * PI / 30) / 12)
    ya = A*sin(PI / 4 - H * PI / 6 - (M * PI / 30) / 12)
    xb = B*cos(PI / 4 - M * PI / 30)
    yb = B*sin(PI / 4 - M * PI / 30)

  echo sqrt((xb - xa)^2 + (yb - ya)^2)
