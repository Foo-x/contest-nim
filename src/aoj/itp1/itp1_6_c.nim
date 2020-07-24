include ../ctemplate

when isMainModule:
  var
    n = read(int)

  var result = 4.newSeqWith 3.newSeqWith 10.newSeqWith 0

  n.loop:
    var
      b = read(int)
      f = read(int)
      r = read(int)
      v = read(int)

    result[b - 1][f - 1][r - 1] += v

  echo result.map(b => b.map(f => f.join(" ")).join("\n")).join("\n" &
      "#".repeat(20) & "\n")
