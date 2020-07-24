include ../../ctemplate

when isMainModule:
  while true:
    var
      n = read(int)
      x = read(int)

    if n == 0 and x == 0:
      break

    var result = 0
    for i in 1..n:
      for j in (i+1)..n:
        for k in (j+1)..n:
          if i + j + k == x:
            result += 1

    echo result
