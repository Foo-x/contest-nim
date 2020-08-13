include contestlib/imports
import contestlib

var
  H: int
  W: int
  G: seq[seq[char]]
  mem = newSeqWith(1001, newSeqWith(1001, -1))

proc solve(i, j: int): int =
  if i == -1 or j == -1:
    return 0
  if i == 0 and j == 0:
    return 1
  if mem[i][j] != -1:
    return mem[i][j]
  if G[i][j] == '#':
    return 0

  mem[i][j] = (solve(i-1, j) + solve(i, j-1)) mod MOD

  return mem[i][j]

when isMainModule:
  H = read(int)
  W = read(int)
  G = read(char, H, W)

  echo solve(H-1, W-1)
