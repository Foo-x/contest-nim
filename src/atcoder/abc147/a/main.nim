import strutils, sequtils, math

if stdin.readLine.split.map(parseInt).sum >= 22:
  echo "bust"
else:
  echo "win"
