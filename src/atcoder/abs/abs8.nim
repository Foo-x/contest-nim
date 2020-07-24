include ../../ctemplate

when isMainModule:
  var
    n = read(int)
    d = read(int, n)

  echo d.deduplicate.len
