include contestlib/imports
import contestlib

proc echoIsStable(A: seq[(char, int)], Acp: seq[(char, int)]) =
  for i in 1..<A.len:
    if Acp[i-1][1] != Acp[i][1]:
      continue

    if A.find(Acp[i-1]) > A.find(Acp[i]):
      echo "Not stable"
      return

  echo "Stable"

proc bubble(A: seq[(char, int)]) =
  var Acp = A

  for i in 0..<A.len:
    for j in countdown(A.len-1, i+1):
      if Acp[j][1] < Acp[j-1][1]:
        swap Acp[j], Acp[j-1]

  echo Acp.mapIt($it[0] & $it[1]).join(" ")
  echoIsStable(A, Acp)

proc selection(A: seq[(char, int)]) =
  var Acp = A

  for i in 0..<A.len:
    var minj = i
    for j in i..<A.len:
      if Acp[j][1] < Acp[minj][1]:
        minj = j
    swap Acp[i], Acp[minj]

  echo Acp.mapIt($it[0] & $it[1]).join(" ")
  echoIsStable(A, Acp)

when isMainModule:
  var
    n = read(int)
    A = newSeq[(char, int)](n)

  for i in 0..<n:
    A[i] = (read(char), read(int))

  bubble(A)
  selection(A)
