include contestlib/imports
import contestlib

var
  N: int
  Q: int
  arr: array[1..100_000, int]

when isMainModule:
  N = read(int)

  var s = 0

  N.loop:
    let a = read(int)
    arr[a] += 1
    s += a

  Q = read(int)

  Q.loop:
    let
      b = read(int)
      c = read(int)
    s = s + (c-b) * arr[b]
    echo s
    arr[c] += arr[b]
    arr[b] = 0
