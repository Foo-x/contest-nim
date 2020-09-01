import math, strutils, sequtils

let S = stdin.readLine.split.map(parseInt)

echo S[0].lcm(S[1])
