import strutils

var
  X = stdin.readLine.parseInt

if X in [7,5,3]:
  echo "YES"
else:
  echo "NO"
