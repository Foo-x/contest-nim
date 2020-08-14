include contestlib/imports
import contestlib
import contestlib/math/matrix

var
  N: int
  K: int
  M: Matrix[int]

proc `*`[T](a, b: Matrix[T]): Matrix[T] =
  assert a.c == b.r
  result = newMatrix[T](a.r, b.c)
  for r in 0..<a.r:
    for c in 0..<b.c:
      var n: T
      for k in 0..<a.c:
        n = (n + a[r, k] * b[k, c]) mod MOD
      result[r, c] = n

when isMainModule:
  N = read(int)
  K = read(int)
  M = read(int, N, N).toMatrix()

  M = M^K

  var result = 0
  for i in 0..<N:
    for j in 0..<N:
      result = (result + M[i, j]) mod MOD

  echo result
