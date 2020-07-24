include ../../ctemplate

when isMainModule:
  while true:
    var n = read(int)

    if n == 0:
      break

    var ss = read(int, n)

    var
      m = ss.sum / n
      v = ss.mapIt((it.toFloat - m)^2).sum / n.toFloat

    echo v.sqrt
