import strutils

let N = stdin.readLine.parseInt

for i in 1..9:
  for j in 1..9:
    if N == i * j:
      echo "Yes"
      quit()

echo "No"
