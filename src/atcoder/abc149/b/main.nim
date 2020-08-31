include contestlib/imports
import contestlib

var
  (A, B, K) = read(int, int, int)

if K <= A:
  echo &"{A-K} {B}"
  quit()

K -= A
A = 0

if K <= B:
  echo &"0 {B-K}"
else:
  echo &"0 0"
