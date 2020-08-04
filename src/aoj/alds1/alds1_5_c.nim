include contestlib/imports
import contestlib

type Point = (float, float)

const sin60 = sqrt(3.0) / 2
const cos60 = 1 / 2

proc rotate(p1, p2: Point): Point =
  let
    s = p2[0] - p1[0]
    t = p2[1] - p1[1]
  (p1[0] + s * cos60 - t * sin60, p1[1] + s * sin60 + t * cos60)

proc trisect(p1, p2: Point): (Point, Point) =
  let
    newP1 = (p1[0] * 2 / 3 + p2[0] / 3, p1[1] * 2 / 3 + p2[1] / 3)
    newP2 = (p1[0] / 3 + p2[0] * 2 / 3, p1[1] / 3 + p2[1] * 2 / 3)
  (newP1, newP2)

proc koch(p1, p2: Point, d: int) =
  if d > 0:
    let (newP1, newP2) = trisect(p1, p2)
    let newP3 = rotate(newP1, newP2)

    koch(p1, newP1, d - 1)
    koch(newP1, newP3, d - 1)
    koch(newP3, newP2, d - 1)
    koch(newP2, p2, d - 1)
  else:
    echo p1[0], " ", p1[1]

when isMainModule:
  var
    n = read(int)

  var
    p1 = (0.0, 0.0)
    p2 = (100.0, 0.0)

  koch(p1, p2, n)
  echo p2[0], " ", p2[1]
