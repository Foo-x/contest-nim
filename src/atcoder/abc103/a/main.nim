include contestlib/imports
import contestlib

var
  A = read(int, 3).sorted(Descending)
  result = 0

for i in 0..<2:
  result += A[i] - A[i+1]

echo result
