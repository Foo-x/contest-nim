import strutils, sequtils

discard stdin.readLine

var
  I = stdin.readLine.split.map(parseInt)
  diff = 0

for i, a in I:
  if a != i + 1:
    diff += 1

  if diff > 2:
    echo "NO"
    quit()

echo "YES"
