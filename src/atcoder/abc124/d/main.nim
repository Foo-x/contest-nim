include contestlib/imports
import contestlib
import contestlib/tree/bit

var
  (N, K, S) = read(int, int, string)
  cnts = newSeqOfCap[int](N+2)
  cur: char

if S[0] == '0':
  cnts.add(0)

cnts.add(1)
cur = S[0]

for i in 1..<S.len:
  if S[i] == cur:
    cnts[^1] += 1
  else:
    cur = S[i]
    cnts.add(1)

if S[^1] == '0':
  cnts.add(0)

if 2 * K > cnts.len:
  echo cnts.sum
  quit()

var
  b = newBIT[int](cnts.len)

for i, cnt in cnts:
  b.add0(i, cnt)

var
  max = b.sum0(2*K)

for i in countup(2, cnts.len, 2):
  if i + 2 * K > cnts.len:
    break

  max.max= b.sum0(i+2*K) - b.sum0(i-1)

echo max
