include contestlib/imports
import contestlib

var
  N: int
  L: seq[int]

when isMainModule:
  N = read(int)
  L = read(int, N)

  var result = 0

  for i in 0..<N:
    for j in i..<N:
      for k in j..<N:
        let
          a = L[i]
          b = L[j]
          c = L[k]

        if a == b or b == c or c == a:
          continue

        if a + b > c and b + c > a and c + a > b:
          result += 1

  echo result
