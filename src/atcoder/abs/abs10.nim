include ../../ctemplate

when isMainModule:
  var s = read(string)

  let t = ["dream", "dreamer", "erase", "eraser"]

  while true:
    let filtered = t.filterIt(s.endsWith(it))
    if filtered.len == 0:
      break

    s.removeSuffix(filtered[0])

  if s.len == 0:
    echo "YES"
  else:
    echo "NO"
