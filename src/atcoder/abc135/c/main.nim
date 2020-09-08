include contestlib/imports
import contestlib

var
  N = read(int)
  A = read(int, N+1)
  B = read(int, N)
  over = 0
  result = 0

for i, b in B:
  if b <= A[i] - over:
    result += b
    over = 0
  else:
    result += min(A[i] - over + A[i+1], b)
    over = min(b - A[i] + over, A[i+1])

echo result
