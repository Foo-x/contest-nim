import strutils, sequtils, algorithm

discard stdin.readLine

echo stdin.readLine.split.map(parseFloat).sorted.foldl((a + b) / 2)
