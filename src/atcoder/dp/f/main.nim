include contestlib/imports
import contestlib

var
  s: string
  t: string
  mem = newSeqWith(3001, newSeqWith(3001, -1))
  prev = newSeqWith(3001, newSeqWith(3001, (-1,-1)))

proc solve(i, j: int): int =
  if i == -1 or j == -1:
    return 0
  if mem[i][j] != -1:
    return mem[i][j]

  let
    a = solve(i-1, j)
    b = solve(i, j-1)

  if s[i] == t[j]:
    mem[i][j] = solve(i-1, j-1) + 1
    prev[i][j] = (i-1, j-1)
  if a >= mem[i][j]:
    mem[i][j] = a
    prev[i][j] = (i-1, j)
  if b >= mem[i][j]:
    mem[i][j] = b
    prev[i][j] = (i, j-1)

  return mem[i][j]

when isMainModule:
  s = read(string)
  t = read(string)

  var
    i = s.len - 1
    j = t.len - 1

  discard solve(i, j)

  var result = ""
  while i > -1 and j > -1:
    let prev = prev[i][j]
    if prev == (i-1,j-1):
      result = s[i] & result

    (i, j) = prev

  echo result
