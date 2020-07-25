include ../../ctemplate

when isMainModule:
  var
    n = read(int)
    k = read(int)
    A = read(int, n)

  for i in 0..<(n-k):
    if A[i] >= A[i+k]:
      echo "No"
    else:
      echo "Yes"
