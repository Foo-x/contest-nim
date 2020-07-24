include ../../ctemplate

when isMainModule:
  for i in 1..10000:
    var x = read(int)
    if x == 0:
      break
    echo &"Case {i}: {x}"
