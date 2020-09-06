import strutils, sequtils, math

discard stdin.readLine

var
  A = stdin.readLine.split.map(parseInt).mapIt(1 / it).sum

echo 1 / A
