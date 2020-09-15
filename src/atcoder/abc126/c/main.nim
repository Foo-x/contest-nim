include contestlib/imports
import contestlib

var
  (N, K) = read(int, int)
  result: float

proc calc(i: int): float =
  var
    i = i
    cnt = 0

  while i < K:
    i *= 2
    cnt += 1

  if cnt == 0:
    result = 1
  else:
    result = (1/2)^cnt

for i in 1..N:
  result += (1/N) * calc(i)

echo result
