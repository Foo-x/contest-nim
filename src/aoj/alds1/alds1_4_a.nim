include contestlib/imports
import contestlib

when isMainModule:
  var
    n = read(int)
    S = read(int, n).toHashSet()
    q = read(int)
    T = read(int, q)

  echo T.filterIt(S.contains(it)).len
