include contestlib/imports
import contestlib

proc partition(A: var openArray[int], p, r: int): int =
  var
    x = A[r]
    i = p - 1

  for j in p..<r:
    if A[j] <= x:
      i += 1
      swap A[i], A[j]

  swap A[i + 1], A[r]
  return i + 1

when isMainModule:
  var
    n = read(int)
    A = read(int, n)

  var pivot = partition(A, 0, n-1)
  for i in 0..<n:
    if i != 0:
      stdout.write(" ")

    if i == pivot:
      stdout.write &"[{A[i]}]"
    else:
      stdout.write A[i]
