include contestlib/imports
import contestlib

proc partition(A: var openArray[seq[string]], p, r: int): int =
  var
    x = A[r]
    i = p - 1

  for j in p..<r:
    if A[j][1].parseInt <= x[1].parseInt:
      i += 1
      swap A[i], A[j]

  swap A[i + 1], A[r]
  return i + 1

proc quickSort(A: var openArray[seq[string]], p, r: int) =
  if p < r:
    var q = partition(A, p, r)
    quickSort(A, p, q - 1)
    quickSort(A, q + 1, r)

when isMainModule:
  var
    n = read(int)
    A = read(string, n, 2)
    B = A

  quickSort(A, 0, n - 1)

  var result = "Stable"
  for a in A:
    var sortedSameNums = A.filterIt(it[1] == a[1])
    var originalSameNums = B.filterIt(it[1] == a[1])
    if sortedSameNums.find(a) != originalSameNums.find(a):
      result = "Not stable"
      break

  echo result
  echo A.mapIt(it.join(" ")).join("\n")
