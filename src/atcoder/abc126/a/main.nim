include contestlib/imports
import contestlib

var
  (N, K, S) = read(int, int, string)

for i, c in S:
  if i+1 == K:
    stdout.write ($c).toLower
  else:
    stdout.write c
