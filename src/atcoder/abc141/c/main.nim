include contestlib/imports
import contestlib

var
  (N, K, Q) = read(int, int, int)
  A = read(int, Q).toCountTable

for i in 1..N:
  if Q - A.getOrDefault(i, 0) < K:
    echo "Yes"
  else:
    echo "No"
