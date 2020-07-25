include ../../ctemplate


when isMainModule:
  var
    h = read(int)
    w = read(int)
    k = read(int)
    c = read(char, h * w)

  let blackIndices = toSeq(c.pairs).filterIt(it[1] == '#').mapIt((it[0] div w, it[0] mod w))

  var
    hb = (1 shl h) - 1
    wb = (1 shl w) - 1
    result = 0

  for hi in (0..hb):
    for wi in (0..wb):
      let selectedH = toSeq(hi.toBin(h).pairs).filterIt(it[1] == '1').mapIt(it[0])
      let selectedW = toSeq(wi.toBin(w).pairs).filterIt(it[1] == '1').mapIt(it[0])

      let remIndicesLen = blackIndices.filterIt(not selectedH.contains(it[0])).filterIt(not selectedW.contains(it[1])).len
      if remIndicesLen == k:
        result += 1

  echo result
