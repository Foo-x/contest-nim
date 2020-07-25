include ../../ctemplate

when isMainModule:
  var
    a = read(int)
    b = read(int)
    c = read(int)
    k = read(int)

  k.loop:
    if a >= b:
      b *= 2
    else:
      c *= 2

  if a < b and b < c:
    echo "Yes"
  else:
    echo "No"
