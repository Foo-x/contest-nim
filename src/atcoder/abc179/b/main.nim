include contestlib/imports
import contestlib

var
  N = read(int)
  D = read(int, N, 2)
  cnt = 0

for d in D:
  if d[0] == d[1]:
    cnt += 1
  else:
    cnt = 0

  if cnt >= 3:
    echo "Yes"
    quit()

echo "No"
