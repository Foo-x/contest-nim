include contestlib/imports
import contestlib

var
  N = read(int)
  A = read(int, N)
  result = A[0]

for i in 1..<N:
  result.min= A[0].gcd(A[i])

echo result
