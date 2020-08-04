include contestlib/imports
import contestlib
import contestlib/tree/treenode

proc format(node: TreeNode): string =
  var
    id = node.id
    parent = if node.isRoot: -1 else: node.parent.get.id
    siblings = node.siblings.mapIt(it.id)
    sibling = if siblings.len == 0: -1 else: siblings[0]
    degree = node.children.len
    depth = node.depth
    height = node.height
    typ = if node.isRoot: "root" elif node.isLeaf: "leaf" else: "internal node"

  &"node {id}: parent = {parent}, " &
  &"sibling = {sibling}, " &
  &"degree = {degree}, " &
  &"depth = {depth}, " &
  &"height = {height}, " &
  typ

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

  echo tree.format
  for i in 1..<n:
    echo tree.findById(i).get.format
