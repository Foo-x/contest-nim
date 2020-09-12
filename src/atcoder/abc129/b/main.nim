include contestlib/imports
import contestlib

var
  N = read(int)
  W = read(int, N).cumsummed
  result = 100000

for i in 0..<N-1:
  result.min= abs 2 * W[i] - W[N-1]

echo result
