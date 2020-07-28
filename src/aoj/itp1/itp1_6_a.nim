include contestlib/imports
import contestlib

when isMainModule:
  var
    n = read(int)
    v = read(int, n)

  echo v.reversed().join(" ")
