import strutils, sequtils, math

var
  I = stdin.readLine.split.map(parseInt).sum

if I mod 2 == 0:
  echo I div 2
else:
  echo "IMPOSSIBLE"
