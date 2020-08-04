include contestlib/imports
import contestlib

proc countingSort(A, B: var openArray[int], k: int) =
  var
    C = newSeq[int](k+1)

  for j in 0..<A.len:
    C[A[j]] += 1

  for i in 1..k:
    C[i] += C[i-1]

  for j in countdown(A.len-1, 0):
    B[C[A[j]]] = A[j]
    C[A[j]] -= 1

when isMainModule:
  var
    n = read(int)
    A = read(int, n)
    B = newSeq[int](n + 1)

  countingSort(A, B, A.max)

  echo B[1..^1].join " "
