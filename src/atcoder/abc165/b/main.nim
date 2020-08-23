import strutils

var
  X = stdin.readLine.parseInt
  a = 100
  i = 0

while a < X:
  a += a div 100
  i += 1

echo i
