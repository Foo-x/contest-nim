import strutils, sequtils

let I = stdin.readLine.split.map(parseInt)

if I[0] < 10 and I[1] < 10:
  echo I[0] * I[1]
else:
  echo -1
