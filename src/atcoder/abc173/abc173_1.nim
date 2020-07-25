include ../../ctemplate

when isMainModule:
  var n = read(int)

  let rem = n mod 1000
  echo if rem == 0: 0 else: 1000 - rem
