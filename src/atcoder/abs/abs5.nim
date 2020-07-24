include ../../ctemplate

when isMainModule:
  var
    a = read(int)
    b = read(int)
    c = read(int)
    x = read(int)

  var result = 0
  for ia in (0..a):
    for ib in (0..b):
      for ic in (0..c):
        if 500 * ia + 100 * ib + 50 * ic == x:
          result += 1

  echo result
