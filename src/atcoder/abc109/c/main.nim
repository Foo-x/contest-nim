include contestlib/imports
import contestlib

var
  N, X = read(int)
  Xs = read(int, N)

Xs.add X
Xs.sort()

var
  D = newSeqUninitialized[int](N)

for i in 0..<N:
  D[i] = Xs[i+1] - Xs[i]

if N == 1:
  echo D[0]
  quit()

var
  result = D[0].gcd(D[1])

for i in 2..<N:
  result = result.gcd(D[i])

echo result
