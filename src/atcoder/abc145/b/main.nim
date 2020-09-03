import strutils

var
  N = stdin.readLine.parseInt
  S = stdin.readLine

if N mod 2 == 1:
  echo "No"
  quit()

if S[0..<N div 2] == S[N div 2..^1]:
  echo "Yes"
else:
  echo "No"
