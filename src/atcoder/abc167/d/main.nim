include contestlib/imports
import contestlib

var
  N = read(int)
  K = read(int)
  A = read(int, N)
  mem = newSeqWith[int](N, -1)

var
  i = 0
  next = 1
while mem[next-1] == -1 and i < K:
  mem[next-1] = i
  next = A[next-1]
  i += 1

if i == K:
  echo A[mem.find(i-1)]
  quit()

let
  loopCnt = i - mem[next-1]
  remain = (K - i - 1) mod loopCnt

var result = A[next-1]

remain.loop:
  result = A[result-1]

echo result
