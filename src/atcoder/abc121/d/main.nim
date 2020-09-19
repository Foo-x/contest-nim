include contestlib/imports
import contestlib

var
  A, B = read(int)

proc xorTo(x: int): int =
  let
    onesCnt = (x+1) div 2
    xorOnesCnt = if onesCnt mod 2 == 0: 0 else: 1

  if x mod 2 == 0:
    result = xorOnesCnt xor x
  else:
    result = xorOnesCnt

echo xorTo(B) xor xorTo(A-1)
