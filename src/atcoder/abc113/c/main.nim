include contestlib/imports
import contestlib

type
  City = tuple[i: int, p: int, y: int]

proc `<`(a, b: City): bool =
  a.y < b.y

var
  N, M = read(int)
  PY = read(M, int, int)
  Q = newSeqWith(N, initHeapQueue[City]())
  result = newSeq[string](M)

for i, (p, y) in PY:
  Q[p-1].push((i, p, y))

for i in 0..<N:
  var
    q = Q[i]

  for j in 1..q.len:
    var
      city = q.pop()

    result[city.i] = align($city.p, 6, '0') & align($j, 6, '0')

for c in result:
  echo c
