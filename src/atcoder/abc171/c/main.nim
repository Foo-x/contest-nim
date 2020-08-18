include contestlib/imports
import contestlib

var
  N: int

when isMainModule:
  N = read(int)

  let
    a2Z = toSeq('a'..'z')

  var
    result: string
  while N != 0:
    N -= 1
    result &= a2Z[N mod 26]
    N = N div 26

  echo result.reversed.join("")
