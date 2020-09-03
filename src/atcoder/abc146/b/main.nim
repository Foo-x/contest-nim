import strutils, sequtils

var
  N = stdin.readLine.parseInt
  S = stdin.readLine
  C = toSeq('A'..'Z')

for c in S:
  stdout.write C[(C.find(c) + N) mod 26]
