include contestlib/imports
import contestlib

var
  N: int
  M: int
  G = newSeqWith(100_001, newSeq[int]())
  mem = newSeqWith(100_001, -1)

proc solve(n: int): int =
  if mem[n] != -1:
    return mem[n]

  mem[n] = 0
  for g in G[n]:
    mem[n].max = solve(g) + 1

  return mem[n]

when isMainModule:
  N = read(int)
  M = read(int)

  for i in 0..<M:
    let
      x = read(int)
      y = read(int)

    G[x].add y

  var result = 0
  for i in 1..N:
    result.max= solve(i)

  echo result
