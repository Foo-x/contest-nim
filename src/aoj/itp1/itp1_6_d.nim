include ../../ctemplate

when isMainModule:
  var
    n = read(int)
    m = read(int)
    mat = read(int, n, m)
    y = read(int, m)

  for a in mat:
    echo (0..<m).toSeq.map(i => a[i] * y[i]).sum
