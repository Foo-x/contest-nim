include contestlib/imports
import contestlib

when isMainModule:
  var
    a = read(int)
    b = read(int)
    c = read(int)
    s = read(string)

  echo a+b+c, " ", s
