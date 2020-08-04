include contestlib/imports
import contestlib

when isMainModule:
  var
    n = read(int)
    q = read(int)
    P = read(string, n, 2).reversed

  var
    t = 0
    result = newSeq[seq[string]]()

  while P.len != 0:
    let
      p = P.pop()
      tp = p[1].parseInt

    if tp <= q:
      t += tp
      result.add @[p[0], $t]
    else:
      t += q
      P.insert(@[p[0], $(tp - q)], 0)

  for r in result:
    echo r.join " "
