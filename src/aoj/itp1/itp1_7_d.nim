include ../../ctemplate

when isMainModule:
  var
    n = read(int)
    m = read(int)
    l = read(int)
    a = read(int, n, m)
    b = read(int, m, l)

  for i in 0..<n:
    echo (0..<l).toSeq().map(j => (0..<m).toSeq().map(k => a[i][k] * b[k][j]).sum).join(" ")
