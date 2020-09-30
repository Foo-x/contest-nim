include contestlib/imports
import contestlib

var
  S, T = read(string)
  ST = initTable[char, char]()

for i, c in S:
  if ST.hasKey(c) and ST[c] != T[i]:
    echo "No"
    quit()

  ST[c] = T[i]

var
  TT = initTable[char, char]()

for i, c in T:
  if TT.hasKey(c) and TT[c] != S[i]:
    echo "No"
    quit()

  TT[c] = S[i]

echo "Yes"
