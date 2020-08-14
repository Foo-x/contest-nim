include contestlib/imports
import contestlib

when isMainModule:
  var
    s = read(string)
    t = read(string)

  if s == t:
    echo 0
    quit()

  var result = 0
  for i in 0..<s.len:
    if s[i] != t[i]:
      result += 1

  echo result
