include contestlib/imports
import contestlib

var
  (A, B, T) = read(float, int, float)
  X = A
  result = 0

while X < T+0.5:
  result += B
  X += A

echo result
