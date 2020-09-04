include contestlib/imports
import contestlib

var
  N = read(int)
  A = read(int, N)
  result = newSeqUninitialized[int](N)

for i, a in A:
  result[a-1] = i+1

echo result.join(" ")
