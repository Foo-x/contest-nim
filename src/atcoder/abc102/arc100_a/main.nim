include contestlib/imports
import contestlib

var
  N = read(int)
  A = read(int, N)

for i in 0..<N:
  A[i] -= i+1

A.sort()

var
  median =
    if N mod 2 == 0:
      toInt (A[N div 2 - 1] + A[N div 2]) / 2
    else:
      A[N div 2]

echo A.mapIt(abs(it - median)).sum
