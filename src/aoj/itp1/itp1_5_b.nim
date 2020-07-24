include ../../ctemplate

when isMainModule:
  while true:
    var
      h = read(int)
      w = read(int)

    if h == 0 and w == 0:
      break

    echo "#".repeat(w)

    (h - 2).loop:
      echo "#" & ".".repeat(w - 2) & "#"

    echo "#".repeat(w)
    echo ""
