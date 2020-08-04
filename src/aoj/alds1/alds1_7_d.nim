include contestlib/imports
import contestlib
import contestlib/tree/treenode

# TODO: もう少し効率よくできそう

when isMainModule:
  var
    n = read(int)
    pres = read(int, n)
    ins = read(int, n)

  proc addChildren(root: TreeNode, left: openArray[int], right: openArray[int])=
    if left.len != 0:
      var
        leftInPres = pres.filterIt(it in left)
        leftRoot = newNode(leftInPres[0], @[])
        leftRootIndex = left.find(leftInPres[0])
        newLeft = left[0..<leftRootIndex]
        newRight = left[leftRootIndex+1..^1]

      root.addChild(leftRoot)
      addChildren(leftRoot, newLeft, newRight)

    if right.len != 0:
      var
        rightInPres = pres.filterIt(it in right)
        rightRoot = newNode(rightInPres[0], @[])
        rightRootIndex = right.find(rightInPres[0])
        newLeft = right[0..<rightRootIndex]
        newRight = right[rightRootIndex+1..^1]

      root.addChild(rightRoot)
      addChildren(rightRoot, newLeft, newRight)

  var
    root = newNode(pres[0], @[])
    rootIndex = ins.find(pres[0])
    left = ins[0..<rootIndex]
    right = ins[rootIndex+1..^1]

  addChildren(root, left, right)

  echo root.flat(Post).mapIt(it.id).join(" ")
