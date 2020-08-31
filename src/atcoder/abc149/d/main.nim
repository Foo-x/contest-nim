include contestlib/imports
import contestlib

var
  (N, K, R, S, P) = read(int, int, int, int, int)
  T = read(string)
  result = 0
  mem = newSeqOfCap[char](N)

mem.setLen(N)

proc nextHand(c: char): char =
  case c
  of 'r': 'p'
  of 's': 'r'
  else: 's'

for i, c in T:
  if i < K:
    mem[i] = nextHand(c)
  else:
    let h = nextHand(c)
    if mem[i-K] == h:
      mem[i] = 'a'
      continue
    else:
      mem[i] = h

  case mem[i]
  of 'r': result += R
  of 's': result += S
  else: result += P

echo result
