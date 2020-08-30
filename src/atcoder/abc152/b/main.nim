import strutils

var
  s = stdin.readLine.split(" ")
  a = s[0].repeat(s[1].parseInt)
  b = s[1].repeat(s[0].parseInt)

if a < b:
  echo a
else:
  echo b
