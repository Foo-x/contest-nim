include contestlib/imports
import contestlib

var
  (K, N) = readTuple(int, int)
  A = read(int, N)
  dists = newSeqUninitialized[int](N)

for i in 0..<N-1:
  dists[i] = A[i+1] - A[i]

dists[N-1] = K - A[N-1] + A[0]

let
  endIndex = dists.find(dists.max)

echo K - dists[endIndex]
