import strutils, sequtils

let s = stdin.readLine.split(" ").map(parseInt)

if s[0] * 500 >= s[1]:
  echo "Yes"
else:
  echo "No"
