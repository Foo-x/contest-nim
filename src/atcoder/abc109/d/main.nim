include contestlib/imports
import contestlib

type
  Cell = tuple[h, w: int, isOdd: bool]

var
  H, W = read(int)
  C = newSeqOfCap[Cell](H*W)

for i in 1..H:
  var
    R = read(int, W)

  for j in 1..W:
    if i mod 2 == 1:
      C.add((i, j, R[j-1] mod 2 == 1))
    else:
      C.add((i, W-j+1, R[^j] mod 2 == 1))

var
  oddIndices = newSeqOfCap[int](H*W)

for i, c in C:
  if c.isOdd:
    oddIndices.add i

type
  Result = tuple[y, x, yy, xx: int]

var
  result = newSeqOfCap[Result](H*W)

for i in countup(0, oddIndices.len - 2, 2):
  let
    l = oddIndices[i]
    r = oddIndices[i+1]

  for j in l..<r:
    result.add((C[j].h, C[j].w, C[j+1].h, C[j+1].w))

echo result.len
for r in result:
  echo &"{r.y} {r.x} {r.yy} {r.xx}"
