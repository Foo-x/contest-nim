include contestlib/imports
import contestlib

var
  N, M = read(int)
  I = read(int, N, 2).sortedByIt(it[0])
  sh = M
  result = 0

for ab in I:
  if ab[1] >= sh:
    result += ab[0] * sh
    break

  sh -= ab[1]
  result += ab.prod()

echo result
