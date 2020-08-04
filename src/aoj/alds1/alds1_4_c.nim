include contestlib/imports
import contestlib

when isMainModule:
  var
    n = read(int)
    ops = read(string, n, 2)

  var dict = initHashSet[string]()
  for op in ops:
    case op[0]:
    of "insert":
      dict.incl op[1]
    of "find":
      if dict.contains op[1]:
        echo "yes"
      else:
        echo "no"
