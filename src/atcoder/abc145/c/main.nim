include contestlib/imports
import contestlib

var
  N = read(int)
  P = read(int, N, 2)
  R = toSeq(0..<N)
  result = newSeqUninitialized[float](N.fac)
  cur = 0

doWhile R.nextPermutation():
  var dist = 0.0
  for i in 0..<N-1:
    dist += sqrt ((P[R[i]][0] - P[R[i+1]][0])^2 + (P[R[i]][1] - P[R[i+1]][1])^2).float

  result[cur] = dist
  cur += 1

echo result.sum / result.len.float
