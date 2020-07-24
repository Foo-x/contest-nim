include ../ctemplate

when isMainModule:
  var w = read(string).toLower

  var c = 0
  while true:
    var t = read(string).toLower

    if t == "end_of_text":
      break

    if t.contains w:
      c += 1

  echo c
