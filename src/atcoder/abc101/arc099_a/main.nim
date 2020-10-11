include contestlib/imports
import contestlib

var
  N, K = read(int)

echo ceil((N-K) / (K-1)).int + 1
