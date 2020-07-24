include ../../ctemplate

when isMainModule:
  var x = read(int)
  for i in 3..x:
    if i mod 3 == 0 or i mod 10 == 3 or ($i).contains("3"):
      stdout.write " " & $i
