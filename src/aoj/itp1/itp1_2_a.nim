include ../ctemplate

when isMainModule:
  var
    a = read(int)
    b = read(int)

  if a > b:
    echo "a > b"
  elif a < b:
    echo "a < b"
  else:
    echo "a == b"
