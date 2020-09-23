include contestlib/imports
import contestlib

var
  N = read(int)
  H = read(int, N)
  result = 0

for i in 0..<N:
  while H[i] > 0:
    for j in i..<N:
      if H[j] == 0:
        break

      H[j] -= 1

    result += 1

echo result
