import strutils, sequtils

var
  I = stdin.readLine.split.map(parseInt)
  cur = 1
  result = 0

while cur < I[1]:
  cur += I[0]-1
  result += 1

echo result
