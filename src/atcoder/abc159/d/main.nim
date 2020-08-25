include contestlib/imports
import contestlib

var
  N = read(int)
  A = read(int, N)
  ct = A.toCountTable
  binoms: Table[int, int]

for k, v in ct.pairs:
  binoms[k] = if v < 2: 0 else: v.binom(2)

let sum = toSeq(binoms.values).sum

for a in A:
  if ct[a] < 2:
    echo sum
  elif ct[a] == 2:
    echo sum - binoms[a]
  else:
    echo sum - binoms[a] + (ct[a] - 1).binom(2)
