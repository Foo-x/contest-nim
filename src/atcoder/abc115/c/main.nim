include contestlib/imports
import contestlib

var
  N, K = read(int)
  H = read(int, N).sorted
  result = InfInt

for l in 0..N-K:
  result.min= H[l+K-1] - H[l]

echo result
