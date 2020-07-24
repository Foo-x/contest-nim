include ../../ctemplate

when isMainModule:
  var
    n = read(int)
    v = read(int, n)

  echo &"{v.min} {v.max} {v.sum}"
