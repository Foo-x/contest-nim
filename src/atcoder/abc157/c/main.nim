include contestlib/imports
import contestlib

var
  (N, M) = read(int, int)

var
  result = newSeqWith(N, -1)

M.loop:
  let
    (s, c) = read(int, int)

  if result[s-1] != -1 and result[s-1] != c:
    echo -1
    quit()

  result[s-1] = c

if N > 1 and result[0] == 0:
  echo -1
  quit()

if N == 1 and result[0] == -1:
  echo 0
  quit()

if result[0] == -1:
  result[0] = 1

for i, a in result[1..^1]:
  if a == -1:
    result[i+1] = 0

echo result.join("")
