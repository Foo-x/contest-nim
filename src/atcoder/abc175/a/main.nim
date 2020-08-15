include contestlib/imports
import contestlib

var
  S: string

when isMainModule:
  S = read(string)

  if S.contains("RRR"):
    echo 3
  elif S.contains("RR"):
    echo 2
  elif S.contains("R"):
    echo 1
  else:
    echo 0
