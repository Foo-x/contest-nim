include contestlib/imports
import contestlib

var
  N = read(int)
  P = read(int, N)
  Q = read(int, N)
  A = toSeq(1..N)
  cur = 1
  p, q: int

doWhile A.nextPermutation() and (p == 0 or q == 0):
  if A == P:
    p = cur
  if A == Q:
    q = cur
  cur += 1

echo abs p-q
