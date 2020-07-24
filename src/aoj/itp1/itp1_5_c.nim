include ../../ctemplate

when isMainModule:
  while true:
    var
      h = read(int)
      w = read(int)

    if h == 0 and w == 0:
      break

    for i in 1..h:
      for j in 1..w:
        if (i + j) mod 2 == 0:
          stdout.write "#"
        else:
          stdout.write "."
      echo ""

    echo ""
