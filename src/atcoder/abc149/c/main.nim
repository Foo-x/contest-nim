include contestlib/imports
import contestlib
import contestlib/math/prime

var
  X = read(int)

if X == 2:
  echo 2
  quit()

if X mod 2 == 0:
  X += 1

while true:
  if X.isPrime:
    echo X
    break

  X += 2
