include contestlib/imports
import contestlib

proc insertion(A: var seq[int], g: int, cnt: var int) =
  for i in g..<A.len:
    var
      v = A[i]
      j = i - g
    while j >= 0 and A[j] > v:
      A[j+g] = A[j]
      j -= g
      cnt += 1
    A[j+g] = v

proc shell(A: var seq[int], G: seq[int], cnt: var int) =
  for i in 0..<G.len:
    insertion(A, G[i], cnt)

when isMainModule:
  var
    n = read(int)
    A = read(int, n)

  var
    h = 4
    m = 1
    cnt = 0
    G = @[1]

  while h < n:
    G.insert h, 0
    m += 1

    h = 3*h + 1

  shell(A, G, cnt)

  echo m
  echo G.join " "
  echo cnt
  for a in A:
    echo a
