include contestlib/imports
import contestlib

var
  (N, M) = read(int, int)
  result = 0

if N >= 2:
  result += N.binom(2)

if M >= 2:
  result += M.binom(2)

echo result
