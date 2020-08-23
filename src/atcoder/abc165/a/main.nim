import strutils, sequtils

var
  K = stdin.readLine.parseInt
  AB = stdin.readLine.split.map(parseInt)

if AB[0] mod K == 0:
  echo "OK"
  quit()

if (AB[0] div K) * K + K <= AB[1]:
  echo "OK"
else:
  echo "NG"
