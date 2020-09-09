import sequtils, math, tables

var
  S = stdin.readLine.toCountTable

if S.len == 2 and toSeq(S.values).allIt(it == 2):
  echo "Yes"
else:
  echo "No"
