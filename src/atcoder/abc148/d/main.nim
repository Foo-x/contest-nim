include contestlib/imports
import contestlib

var
  N = read(int)
  A = read(int, N)

if not A.contains(1):
  echo -1
  quit()

var
  cur = 1

for i in A:
  if i == cur:
    cur += 1

echo A.len - cur + 1
