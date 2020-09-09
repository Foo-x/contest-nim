include contestlib/imports
import contestlib
import contestlib/cmath

var
  (N, D) = read(int, int)
  X = read(int, N, D)
  result = 0

proc dist(A, B: openArray[int]): int =
  for (a, b) in A.zip(B):
    result += (a-b)^2

for i in 0..<N:
  for j in i+1..<N:
    if dist(X[i], X[j]).isSquare:
      result += 1

echo result
