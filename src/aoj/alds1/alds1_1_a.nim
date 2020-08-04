include contestlib/imports
import contestlib

when isMainModule:
  var
    n = read(int)
    A = read(int, n)

  echo A.join(" ")

  for i in (1..(n-1)):
    var v = A[i]
    var j = i - 1
    while j >= 0 and A[j] > v:
      A[j + 1] = A[j]
      j -= 1
    A[j + 1] = v
    echo A.join(" ")
