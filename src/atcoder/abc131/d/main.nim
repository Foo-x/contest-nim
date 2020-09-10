include contestlib/imports
import contestlib

var
  N = read(int)
  AB = read(int, N, 2).sortedByIt(it[1])
  cur = 0

for ab in AB:
  cur += ab[0]
  if cur > ab[1]:
    echo "No"
    quit()

echo "Yes"
