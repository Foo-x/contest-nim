include contestlib/imports
import contestlib

var
  A, B, K = read(int)
  cur = 0
  i = min(A, B)

while i >= 1 and cur < K:
  if A mod i == 0 and B mod i == 0:
    cur += 1

  if cur == K:
    echo i
    quit()

  i -= 1
