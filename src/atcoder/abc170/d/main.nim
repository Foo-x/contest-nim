include contestlib/imports
import contestlib

var
  N: int
  A: seq[int]

when isMainModule:
  N = read(int)
  A = read(int, N).sorted

  var
    arr = newSeq[bool](A[^1])
    used = initHashSet[int]()

  for a in A:
    arr[a-1] = true

  for a in A:
    if not arr[a-1]:
      continue

    if a in used:
      arr[a-1] = false
      continue

    used.incl(a)

    for i in countup(a+a, A[^1], a):
      arr[i-1] = false

  echo arr.count(true)
