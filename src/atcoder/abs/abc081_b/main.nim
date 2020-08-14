include contestlib/imports
import contestlib

when isMainModule:
  var
    n = read(int)
    a = read(int, n)

  var c = 0
  while a.allIt(it mod 2 == 0):
    c += 1
    a.applyIt(it div 2)

  echo c
