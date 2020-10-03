include contestlib/imports
import contestlib

var
  N, K = read(int)
  X = read(int, N)
  size = if 0 in X: K-1 else: K
  Xm = X.filterIt(it < 0)
  Xp = X.filterIt(it > 0)
  result = InfInt

if K == 1 and 0 in X:
  echo 0
  quit()

if Xp.len >= size:
  result.min= Xp[size-1]

if Xm.len >= size:
  result.min= Xm[^size].abs

for mn in 1..<size:
  if mn > Xm.len:
    continue

  let
    pn = size - mn

  if pn > Xp.len:
    continue

  result.min= Xp[pn-1] - Xm[^mn] + min(Xm[^mn].abs, Xp[pn-1])

echo result
