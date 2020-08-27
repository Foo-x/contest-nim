include contestlib/imports
import contestlib
import contestlib/tree/bit

var
  (N, K) = read(int, int)
  P = read(int, N)
  maxD = newSeq[int](K)
  maxV = 0
  bitree = newBIT[int](N)

for i, p in P:
  bitree.add0(i, p)

for i in 0..N-K:
  let
    sum = if i != 0: bitree.sum(i+K) - bitree.sum(i) else: bitree.sum(K)
  if sum > maxV:
    maxD = P[i..<i+K]
    maxV = sum

echo maxD.mapIt(0.5 + it.toFloat * 0.5).sum
