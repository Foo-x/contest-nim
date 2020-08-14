include contestlib/imports
import contestlib

when isMainModule:
  var
    n = read(int)
    s = read(string, n)

  echo &"AC x {s.count(\"AC\")}"
  echo &"WA x {s.count(\"WA\")}"
  echo &"TLE x {s.count(\"TLE\")}"
  echo &"RE x {s.count(\"RE\")}"
