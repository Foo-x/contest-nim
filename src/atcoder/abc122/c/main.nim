include contestlib/imports
import contestlib
import contestlib/tree/bit

var
  (N, Q, S) = read(int, int, string)
  b = newBIT[int](N)

for i in 1..<N:
  if S[i-1] & S[i] == "AC":
    b.add0(i, 1)

Q.loop:
  var
    l, r = read(int)
  echo b.sum(r) - b.sum(l)
