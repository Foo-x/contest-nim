include contestlib/imports
import contestlib
import contestlib/tree

when isMainModule:
  var
    n = read(int)
    A = read(int, n)

  echo A.invCount
