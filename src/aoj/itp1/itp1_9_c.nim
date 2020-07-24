include ../../ctemplate

when isMainModule:
  var n = read(int)

  var
    c1, c2 = 0

  n.loop:
    var
      w1 = read(string)
      w2 = read(string)

    if w1 < w2:
      c2 += 3
    elif w1 > w2:
      c1 += 3
    else:
      c1 += 1
      c2 += 1

  echo c1, " ", c2
