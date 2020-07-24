include ../ctemplate

when isMainModule:
  while true:
    var s = read(string)

    if s == "0":
      break

    echo s.mapIt(($it).parseInt).sum
