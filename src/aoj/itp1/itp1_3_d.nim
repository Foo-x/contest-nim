include contestlib/imports
import contestlib

when isMainModule:
  var
    a = read(int)
    b = read(int)
    c = read(int)

  echo (a..b).toSeq().filterIt(c mod it == 0).len
