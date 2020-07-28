include contestlib/imports
import contestlib

when isMainModule:
  var s = stdin.readLine
  echo s.mapIt(if it.isLowerAscii: it.toUpperAscii else: it.toLowerAscii).join()
