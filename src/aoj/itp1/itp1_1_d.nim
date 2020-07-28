include contestlib/imports
import contestlib

when isMainModule:
  var
    x = read(int)

  let h = x div 3600
  let m = (x mod 3600) div 60
  let s = x mod 60
  echo &"{h}:{m}:{s}"
