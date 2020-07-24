include ../../ctemplate

when isMainModule:
  var
    n = read(int)
    a = read(int)
    b = read(int)

  var result = 0
  for i in (1..n):
    let sum = ($i).mapIt(($it).parseInt).sum
    if sum >= a and sum <= b:
      result += i

  echo result
