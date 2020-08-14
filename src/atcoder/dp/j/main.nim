include contestlib/imports
import contestlib

var
  N: int
  A: seq[int]
  mem = newSeqWith(301, newSeqWith(301, newSeqWith(301, -1.0)))

proc solve(i, j, k: int): float =
  if i == 0 and j == 0 and k == 0:
    return 0
  if mem[i][j][k] != -1:
    return mem[i][j][k]

  mem[i][j][k] = N.toFloat
  if i > 0:
    mem[i][j][k] += solve(i-1, j, k) * i.toFloat
  if j > 0:
    mem[i][j][k] += solve(i+1, j-1, k) * j.toFloat
  if k > 0:
    mem[i][j][k] += solve(i, j+1, k-1) * k.toFloat

  mem[i][j][k] /= (i+j+k).toFloat
  return mem[i][j][k]

when isMainModule:
  N = read(int)
  A = read(int, N)

  var i, j, k: int
  for a in A:
    if a == 1:
      i += 1
    elif a == 2:
      j += 1
    else:
      k += 1

  echo solve(i, j, k)
