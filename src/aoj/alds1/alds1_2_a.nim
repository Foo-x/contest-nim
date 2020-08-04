include contestlib/imports
import contestlib

when isMainModule:
  var
    n = read(int)
    A = read(int, n)

  var opi = 0
  for i in 0..n-1:
    for j in countdown(n-1,i+1):
      if A[j] < A[j-1]:
        swap A[j], A[j-1]
        opi += 1

  echo A.join(" ")
  echo opi
