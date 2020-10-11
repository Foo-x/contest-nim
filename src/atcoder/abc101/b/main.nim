import strutils

var
  Ns = stdin.readLine
  Sn = 0

for c in Ns:
  Sn += ($c).parseInt

if Ns.parseInt mod Sn == 0:
  echo "Yes"
else:
  echo "No"
