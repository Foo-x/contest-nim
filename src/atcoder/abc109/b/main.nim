include contestlib/imports
import contestlib
import contestlib/algorithm as ca

var
  N = read(int)
  W = read(string, N)

if W.deduplicated.len != W.len:
  echo "No"
  quit()

var
  last = W[0][0]

for w in W:
  if cast[char](w[0]) != last:
    echo "No"
    quit()

  last = w[^1]

echo "Yes"
