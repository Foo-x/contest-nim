include contestlib/imports
import contestlib
from contestlib/algorithm as ca import deduplicated, findIf

type
  Point = tuple[x, y, h: int]

var
  N = read(int)
  P: seq[Point] = read(N, int, int, int)
  notZeroIndex = P.findIf(x => x.h != 0)
  notZeroP = P[notZeroIndex]

for x in 0..100:
  for y in 0..100:
    let
      h = notZeroP.h + abs(notZeroP.x - x) + abs(notZeroP.y - y)
      ok = P.allIt(
        if it.h == 0:
          h - abs(it.x - x) - abs(it.y - y) <= 0
        else:
          it.h == h - abs(it.x - x) - abs(it.y - y))

    if ok:
      echo &"{x} {y} {h}"
      quit()
