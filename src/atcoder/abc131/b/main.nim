include contestlib/imports
import contestlib

var
  (N, L) = read(int, int)
  A = toSeq(1..N).mapIt(it + L - 1)
  m = 101

for a in A:
  if a.abs < m.abs:
    m = a

echo A.sum - m
