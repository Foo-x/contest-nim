include ../../ctemplate

when isMainModule:
  var x = read(int)

  if x < 600:
    echo 8
  elif x < 800:
    echo 7
  elif x < 1000:
    echo 6
  elif x < 1200:
    echo 5
  elif x < 1400:
    echo 4
  elif x < 1600:
    echo 3
  elif x < 1800:
    echo 2
  else:
    echo 1
