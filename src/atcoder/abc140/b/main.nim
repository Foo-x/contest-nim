include contestlib/imports
import contestlib

var
  N = read(int)
  A = read(int, N)
  B = read(int, N)
  C = read(int, N-1)
  result = B.sum

for i in 0..<N-1:
  if A[i+1] == A[i] + 1:
    result += C[A[i]-1]

echo result
