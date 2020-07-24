include ../../ctemplate

when isMainModule:
  var
    n = read(int)
    Y = read(int)

  for x in (0..n):
    for y in (0..(n-x)):
      let z = n - x - y
      if x * 10000 + y * 5000 + z * 1000 == Y:
        echo &"{x} {y} {z}"
        quit()

  echo "-1 -1 -1"
