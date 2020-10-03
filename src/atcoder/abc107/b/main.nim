include contestlib/imports
import contestlib

var
  H, W = read(int)
  A = read(char, H, W)
  skipR = newSeqOfCap[int](H)
  skipC = newSeqOfCap[int](W)

let
  blankR = repeat[char]('.', W)
  blankC = repeat[char]('.', H)

for i in 0..<H:
  if A[i] == blankR:
    skipR.add i

for j in 0..<W:
  var c = newSeq[char](H)
  for i in 0..<H:
    c[i] = A[i][j]

  if c == blankC:
    skipC.add j

for i in 0..<H:
  if i in skipR:
    continue

  for j in 0..<W:
    if j in skipC:
      continue

    stdout.write A[i][j]

  stdout.writeLine ""
