include contestlib/imports
import contestlib

when isMainModule:
  var
    n = read(int)
    A = read(int, n)

  var result = 0
  for i in 0..(n-1):
    var mini = i
    for j in i..(n-1):
      if A[j] < A[mini]:
        mini = j
    swap A[i], A[mini]
    if i != mini:
      result += 1

  echo A.join(" ")
  echo result
