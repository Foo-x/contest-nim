include ../ctemplate

when isMainModule:
  for i in 1..3000:
    var l = read(int, 2)
    if l == @[0, 0]:
      break
    echo l.sorted().join(" ")
