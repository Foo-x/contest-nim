import strutils, sequtils

var
  S = stdin.readLine

if S[0] == 'A' and S[2..^2].filterIt(it == 'C').len == 1 and S.filterIt(it notin ['A', 'C']).all(isLowerAscii):
  echo "AC"
else:
  echo "WA"
