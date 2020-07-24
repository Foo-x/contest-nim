include ../../ctemplate

when isMainModule:
  var
    n = read(int)
    v = read(string, n, 2)

  let vSet = v.toHashSet()
  for mark in ["S", "H", "C", "D"]:
    for number in 1..13:
      if @[mark, $number] notin vSet:
        echo &"{mark} {number}"
