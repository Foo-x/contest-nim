import strutils

var
  N = stdin.readLine.parseInt

for i in 0..(N div 4):
  for j in 0..(N div 7):
    if i * 4 + j * 7 == N:
      echo "Yes"
      quit()

echo "No"
