include contestlib/imports
import contestlib

when isMainModule:
  var
    a = read(int)
    b = read(int)

  while min(a, b) != 0:
    if a > b:
      a = a mod b
    else:
      b = b mod a

  echo max(a, b)
