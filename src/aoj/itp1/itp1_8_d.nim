include ../../ctemplate

when isMainModule:
  var
    s = read(string)
    p = read(string)

  if (s & s).contains(p):
    echo "Yes"
  else:
    echo "No"
