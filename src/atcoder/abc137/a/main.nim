import strutils, sequtils

var
  I = stdin.readLine.split.map(parseInt)
  A = [I[0] + I[1], I[0] - I[1], I[0] * I[1]]

echo A.max
