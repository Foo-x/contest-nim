include ../ctemplate

when isMainModule:
  var
    str = read(string)
    q = read(int)

  q.loop:
    var
      c = read(string)
      a = read(int)
      b = read(int)

    if c == "replace":
      var
        p = read(string)

      str[a..b] = p
      continue

    if c == "reverse":
      str.reverse(a, b)
      continue

    if c == "print":
      echo str[a..b]
