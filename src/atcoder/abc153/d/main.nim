import strutils

var
  H = stdin.readLine.parseInt
  result = 0

while H > 0:
  H = H div 2
  result = result * 2 + 1

echo result
