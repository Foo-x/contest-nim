include contestlib/imports
import contestlib
import contestlib/tree/bstree

when isMainModule:
  var
    n = read(int)
    T: BSTree

  n.loop:
    var
      p = read(string)

    if p == "print":
      echo " ", if T.isNil: "" else: T.flat(In).mapIt(it.value).join(" ")
      echo " ", if T.isNil: "" else: T.flat(Pre).mapIt(it.value).join(" ")
      continue

    if T.isNil:
      T = newBSTree(read(int))
    else:
      T.insert(read(int))
