include contestlib/imports
import contestlib, contestlib/tree/treenode

proc format(node: TreeNode): string =
  var
    id = node.id
    parent = if node.parent.isSome: $node.parent.get.id else: "-1"
    depth = node.depth
    typ = if parent == "-1":
        "root"
      elif node.children.len == 0:
        "leaf"
      else:
        "internal node"
    children = &"[{node.children.mapIt(it.id).join(\", \")}]"

  &"node {id}: parent = {parent}, depth = {depth}, {typ}, {children}"

when isMainModule:
  var
    n = read(int)
    N = newSeq[seq[int]](n)

  for i in 0..<n:
    var
      _ = read(int)
      cn = read(int)
      children = read(int, cn)

    N[i] = children

  var tree = fromChildrenMatrix(N)

  echo tree.format
  for i in 1..<n:
    echo tree.findById(i).get.format
