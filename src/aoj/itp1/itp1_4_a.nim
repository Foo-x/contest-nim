include contestlib/imports
import contestlib

when isMainModule:
  var
    a = read(int)
    b = read(int)

  echo &"{a div b} {a mod b} {a / b}"
