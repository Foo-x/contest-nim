include ../../ctemplate

when isMainModule:
  var s = stdin.readAll

  for c in 'a'..'z':
    echo &"{c} : {s.count c}"
