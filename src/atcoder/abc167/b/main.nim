include contestlib/imports
import contestlib

var
  A = read(int)
  B = read(int)
  C = read(int)
  K = read(int)

if K <= A:
  echo K
  quit()

K -= A
if K <= B:
  echo A
  quit()

K -= B
echo A - K
