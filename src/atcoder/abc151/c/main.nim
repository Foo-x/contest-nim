include contestlib/imports
import contestlib

var
  (N, M) = read(int, int)
  acs = newSeqWith(N, false)
  was = newSeq[int](N)

M.loop:
  let
    (p, s) = read(int, string)

  if acs[p-1]:
    continue

  if s == "WA":
    was[p-1] += 1
  else:
    acs[p-1] = true

for i, b in acs:
  if not b:
    was[i] = 0

echo &"{acs.count(true)} {was.sum}"
