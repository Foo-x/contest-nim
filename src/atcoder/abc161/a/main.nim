import strutils, strformat

var
  xyz = stdin.readLine.split

echo &"{xyz[2]} {xyz[0]} {xyz[1]}"
