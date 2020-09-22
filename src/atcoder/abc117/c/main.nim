include contestlib/imports
import contestlib

var
  N, M = read(int)

if N >= M:
  echo 0
  quit()

var
  X = read(int, M).sorted
  D = newSeqUninitialized[int](M-1)

for i in 0..<M-1:
  D[i] = X[i+1] - X[i]

D.sort()

echo D[0..^N].sum
