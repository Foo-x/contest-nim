include contestlib/imports
import contestlib

var
  N = read(int)

for x in countdown(N.float.sqrt.int, 1):
  if N mod x != 0:
    continue

  let y = N div x

  echo x - 1 + y - 1
  break
