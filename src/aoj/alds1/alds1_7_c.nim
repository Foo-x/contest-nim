include contestlib/imports
import contestlib
import contestlib/tree/treenode

when isMainModule:
  var
    n = read(int)
    N = newSeq[seq[int]](n)

  for i in 0..<n:
    var
      _ = read(int)
      children = read(int, 2).filterIt(it != -1)

    N[i] = children

  var tree = fromChildrenMatrix(N)

  echo "Preorder"
  echo " " & tree.flat(Pre).mapIt(it.id).join(" ")

  echo "Inorder"
  echo " " & tree.flat(In).mapIt(it.id).join(" ")

  echo "Postorder"
  echo " " & tree.flat(Post).mapIt(it.id).join(" ")
