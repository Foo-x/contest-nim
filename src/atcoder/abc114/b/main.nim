import strutils

template `min=`(x, y) = x = min(x, y)

var
  S = stdin.readLine
  result = 1000

for i in 0..S.len-3:
  result.min= abs 753 - ($S[i..i+2]).parseInt

echo result
