include contestlib/imports
import contestlib

var
  A = read(int, 9)
  N = read(int)
  B = read(int, N)
  opened = initHashSet[int]()

for i, b in B:
  opened.incl(A.find(b))

if [0,3,6].toHashSet() <= opened:
  echo "Yes"
  quit()

if [1,4,7].toHashSet() <= opened:
  echo "Yes"
  quit()

if [2,5,8].toHashSet() <= opened:
  echo "Yes"
  quit()

if [0,1,2].toHashSet() <= opened:
  echo "Yes"
  quit()

if [3,4,5].toHashSet() <= opened:
  echo "Yes"
  quit()

if [6,7,8].toHashSet() <= opened:
  echo "Yes"
  quit()

if [0,4,8].toHashSet() <= opened:
  echo "Yes"
  quit()

if [2,4,6].toHashSet() <= opened:
  echo "Yes"
  quit()

echo "No"
