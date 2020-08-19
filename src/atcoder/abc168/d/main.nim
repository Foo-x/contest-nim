include contestlib/imports
import contestlib

var
  N, M: int

when isMainModule:
  N = read(int)
  M = read(int)
  var
    G = newSeqWith(N+1, newSeq[int]())

  M.loop:
    let
      a = read(int)
      b = read(int)

    G[a].add b
    G[b].add a

  var
    result = newSeqWith(N+1, -1)
    queue = initDeque[int]()

  queue.addLast(1)

  while queue.len > 0:
    let src = queue.popFirst()
    for dst in G[src]:
      if result[dst] != -1:
        continue

      result[dst] = src
      queue.addLast(dst)

  echo "Yes"
  for i in 2..N:
    echo result[i]
