import strutils

var
  R = stdin.readLine.parseInt

if R < 1200:
  echo "ABC"
elif R < 2800:
  echo "ARC"
else:
  echo "AGC"
