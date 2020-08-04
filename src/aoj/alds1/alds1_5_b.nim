include contestlib/imports
import contestlib

var cnt = 0

proc merge(A: var seq[int], left, mid, right: int) =
  var
    n1 = mid - left
    n2 = right - mid
    L = newSeq[int](n1 + 1)
    R = newSeq[int](n2 + 1)

  for i in 0..<n1:
    L[i] = A[left+i]
  for i in 0..<n2:
    R[i] = A[mid+i]

  L[n1] = high(int)
  R[n2] = high(int)

  var
    i, j = 0

  for k in left..<right:
    if L[i] <= R[j]:
      A[k] = L[i]
      i += 1
    else:
      A[k] = R[j]
      j += 1
    cnt += 1

proc mergeSort(A: var seq[int], left, right: int) =
  if left + 1 < right:
    var mid = (left + right) div 2
    mergeSort(A, left, mid)
    mergeSort(A, mid, right)
    merge(A, left, mid, right)

when isMainModule:
  var
    n = read(int)
    S = read(int, n)

  mergeSort(S, 0, n)

  echo S.join(" ")
  echo cnt
