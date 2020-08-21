include contestlib/imports
import contestlib

var
  N = read(int)
  M = read(int)
  X = read(int)
  C = newSeqUninitialized[int](N)
  A = newSeqOfCap[seq[int]](N)

A.setLen(N)

for i in 0..<N:
  C[i] = read(int)
  A[i] = read(int, M)

var result = -1

for i in 1..<(1 shl N):
  var
    a = newSeq[int](M)
    yen = 0

  for ii in 0..<N:
    if (i and (1 shl ii)) == 0:
      continue

    yen += C[ii]
    for j in 0..<M:
      a[j] += A[ii][j]

  if a.allIt(it >= X):
    if result == -1:
      result = yen
    else:
      result.min= yen

echo result
