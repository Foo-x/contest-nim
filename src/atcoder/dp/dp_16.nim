include contestlib/imports
import contestlib

var
  N: int
  G = newSeqWith(100_001, newSeq[int]())

proc solve(root, parent: int): (int, int) =
  var black, white = 1
  for c in G[root]:
    if c == parent:
      continue

    let (childBlack, childWhite) = solve(c, root)
    black = (black * childWhite) mod MOD
    white = (white * (childBlack + childWhite)) mod MOD

  return (black, white)

when isMainModule:
  N = read(int)

  (N-1).loop:
    let
      x = read(int)
      y = read(int)
    G[x].add(y)
    G[y].add(x)

  let (black, white) = solve(1, -1)
  echo (black + white) mod MOD
