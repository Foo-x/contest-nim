include contestlib/imports
import contestlib

var
  (N, M) = read(int, int)
  A = initHeapQueue[int]()

N.loop:
  A.push(read(int))

var
  Q = read(int, M, 2).sortedByIt(-it[1])
  result = newSeqOfCap[int](N)

block global:
  for q in Q:
    var
      i = q[0]

    while i > 0:
      var a = A.pop()
      if a < q[1]:
        result.add(q[1])
      else:
        result.add(a)

      if A.len == 0:
        break global

      i -= 1

while A.len != 0:
  result.add(A.pop())

echo result.sum
