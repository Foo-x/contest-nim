include contestlib/imports
import contestlib

when isMainModule:
  var
    a = read(int)
    s = read(string)
    bs = s.split(".")
  echo (a * (bs[0].parseInt * 100 + bs[1].parseInt)) div 100
