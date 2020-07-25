include ../../ctemplate

when isMainModule:
  var
    n = read(int)
    A = read(int, n).sorted(Descending)

  if n mod 2 == 0:
    echo A[0] + A[1..<(n div 2)].sum * 2
  else:
    echo A[0] + (A[1..<(n div 2)].sum * 2) + A[(n div 2)]
