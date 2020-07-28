include contestlib/imports
import contestlib

when isMainModule:
  while true:
    var
      w = read(string)

    if w == "-":
      break

    var
      m = read(int)
      hs = read(int, m)

    for h in hs:
      w.rotateLeft(h)

    echo w
