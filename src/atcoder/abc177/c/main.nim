include contestlib/imports
import contestlib
import contestlib/math/modint

var
  N = read(int)
  A = read(int, N)
  result = 0.toModInt(MOD)
  sA: seq[ModInt]

for a in A:
  sA.add(a.toModInt(MOD))

sA = sA.cumsummed

for i in 1..A.len-1:
  result += sA[^(i+1)] * A[^i]

echo result.v
