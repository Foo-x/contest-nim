include contestlib/imports
import contestlib

var
  S = read(int)
  mem = newSeq[int](S+1)

proc solve(i: int): int =
  if i < 3:
    return 0
  if i < 6:
    return 1
  if mem[i] != 0:
    return mem[i]

  for j in 3..i-3:
    mem[i] = (mem[i] + solve(j)) mod MOD

  mem[i] = (mem[i] + 1) mod MOD
  return mem[i]

echo solve(S)
