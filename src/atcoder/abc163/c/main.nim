include contestlib/imports
import contestlib

var
  N = read(int)
  subs = newSeq[int](N)

(N-1).loop:
  subs[read(int)-1] += 1

for s in subs:
  echo s
