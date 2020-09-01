import strutils, sequtils

discard stdin.readLine

let
  S = stdin.readLine.split

for (a, b) in S[0].zip(S[1]):
  stdout.write a
  stdout.write b
