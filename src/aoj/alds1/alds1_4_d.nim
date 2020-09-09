include contestlib/imports

import contestlib
import contestlib/algorithm as ca

when isMainModule:
  var
    n = read(int)
    k = read(int)
    W = read(int, n)

  proc isOk(x: int): bool =
    var
      tracks = k.newSeqWith(0)
      cur = 0

    for w in W:
      if tracks[cur] + w > x:
        cur += 1

      if cur >= k:
        return false

      tracks[cur] += w

    true

  echo minMatch(W.max, W.sum, isOk)
