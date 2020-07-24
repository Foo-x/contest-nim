include ../../ctemplate

when isMainModule:
  var
    n = read(int)
    a = read(int, n).sorted(Descending)

  let alice = toSeq(countup(0, (a.len - 1), 2)).mapIt(a[it]).sum
  let bob = toSeq(countup(1, (a.len - 1), 2)).mapIt(a[it]).sum
  echo alice - bob
