include contestlib/imports
import contestlib

var
  N = read(int)
  S = read(string, N).toCountTable()

let
  (_, max) = S.largest

var
  hq = initHeapQueue[string]()

for k, v in S:
  if v == max:
    hq.push(k)

while hq.len > 0:
  echo hq.pop()
