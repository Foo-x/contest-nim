include ../ctemplate

when isMainModule:
  var
    w = read(int)
    h = read(int)
    x = read(int)
    y = read(int)
    r = read(int)

  if x - r < 0 or x + r > w or y - r < 0 or y + r > h:
    echo "No"
  else:
    echo "Yes"
