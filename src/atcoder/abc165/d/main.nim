include contestlib/imports
import contestlib

var
  A = read(int)
  B = read(int)
  N = read(int)
  maxX = toInt floor(A * N / B) - A.toFloat * floor(N / B)

if N < B:
  echo maxX
  quit()

var
  modB = N mod B
  nUnderB = N - modB - 1
  maxUnderB = toInt floor(A * nUnderB / B) - A.toFloat * floor(nUnderB / B)

echo max(maxX, maxUnderB)
