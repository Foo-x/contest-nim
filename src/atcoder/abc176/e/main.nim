include contestlib/imports
import contestlib

var
  H = read(int)
  W = read(int)
  M = read(int)
  GH = newSeq[int](H)
  GW = newSeq[int](W)
  GM = initHashSet[(int, int)]()

for i in 0..<M:
  var
    h = read(int)
    w = read(int)
  GH[h-1] += 1
  GW[w-1] += 1
  GM.incl((h-1, w-1))

var
  hmax = GH.max
  wmax = GW.max
  hs = newSeqOfCap[int](H)
  ws = newSeqOfCap[int](W)

for i, h in GH:
  if h == hmax:
    hs.add(i)

for i, w in GW:
  if w == wmax:
    ws.add(i)

for hi in hs:
  for wi in ws:
    if (hi, wi) notin GM:
      echo hmax + wmax
      quit()

echo hmax + wmax - 1
