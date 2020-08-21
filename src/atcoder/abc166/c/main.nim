include contestlib/imports
import contestlib

var
  N = read(int)
  M = read(int)
  H = read(int, N)
  result = newSeqWith(N, true)

M.loop:
  var
    a = read(int)
    b = read(int)
    ha = H[a-1]
    hb = H[b-1]

  if ha < hb:
    result[a-1] = false
  elif hb < ha:
    result[b-1] = false
  else:
    result[a-1] = false
    result[b-1] = false

echo result.count(true)
