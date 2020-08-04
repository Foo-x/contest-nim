include contestlib/imports
import contestlib

when isMainModule:
  var
    n = read(int)
    R = read(int, n)

  let minN = R.min
  let minNi = R.find(minN)

  var result = -1
  for r in R[minNi..^1]:
    let d = r - minN
    if d != 0 and d > result:
      result = d

  echo result
