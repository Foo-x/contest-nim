include ../ctemplate

when isMainModule:
  var
    a = read(int)
    b = read(int)
    c = read(int)

  if a < b and b < c:
    echo "Yes"
  else:
    echo "No"
