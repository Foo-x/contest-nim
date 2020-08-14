include contestlib/imports
import contestlib

when isMainModule:
  var
    a = read(int)
    b = read(int)

  if a mod 2 == 0 or b mod 2 == 0:
    echo "Even"
  else:
    echo "Odd"
