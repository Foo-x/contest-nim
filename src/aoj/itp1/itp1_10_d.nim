include ../ctemplate

when isMainModule:
  var
    n = read(int)
    x = read(int, n)
    y = read(int, n)

  echo (0..<n).toSeq().mapIt(abs(x[it] - y[it])).sum
  echo (0..<n).toSeq().mapIt((x[it] - y[it])^2).sum.toFloat.sqrt
  echo (0..<n).toSeq().mapIt(abs(x[it] - y[it])^3).sum.toFloat.cbrt
  echo (0..<n).toSeq().mapIt(abs(x[it] - y[it])).max
