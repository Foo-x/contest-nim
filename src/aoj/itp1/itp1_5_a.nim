include ../../ctemplate

when isMainModule:
  while true:
    var
      h = read(int)
      w = read(int)

    if h == 0 and w == 0:
      break

    h.loop:
      echo "#".repeat(w)

    echo ""
