import strutils

let N = stdin.readLine.parseInt

if N mod 2 == 0:
  echo 0.5
else:
  echo ((N div 2).float+1) / N.float
