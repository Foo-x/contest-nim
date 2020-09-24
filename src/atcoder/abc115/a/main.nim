import strutils, sequtils

var
  D = stdin.readLine.parseInt

echo (@["Christmas"] & (repeat[string]("Eve", -D + 25))).join(" ")
