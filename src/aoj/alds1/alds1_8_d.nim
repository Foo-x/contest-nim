include contestlib/imports
import contestlib
import contestlib/tree/treap

when isMainModule:
  var
    n = read(int)
    T: Treap

  n.loop:
    var
      p = read(string)

    if p == "print":
      echo " ", if T.isNil: "" else: T.flat(In).mapIt(it.value).join(" ")
      echo " ", if T.isNil: "" else: T.flat(Pre).mapIt(it.value).join(" ")
      continue

    if p == "find":
      var v = read(int)
      echo if T.isNil or T.findByValue(v).isNone: "no" else: "yes"
      continue

    if p == "delete":
      var v = read(int)
      if not T.isNil:
        T.remove(v)
      continue

    if T.isNil:
      T = newTreap(read(int), read(int))
    else:
      T.insert(read(int), read(int))
