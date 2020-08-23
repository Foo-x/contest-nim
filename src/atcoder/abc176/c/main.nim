include contestlib/imports
import contestlib

var
  N = read(int)
  A = read(int, N)
  cur = A[0]
  result = 0

for a in A[1..^1]:
  if a < cur:
    result += cur - a
  elif a > cur:
    cur = a

echo result
