include ../ctemplate

when isMainModule:
  var r = read(int).toFloat
  let pir = PI * r
  echo &"{pir * r} {2 * pir}"
