import sequtils

let
  a = stdin.readLine
  b = stdin.readLine

echo ["1","2","3"].filterIt(it != a and it != b)[0]
