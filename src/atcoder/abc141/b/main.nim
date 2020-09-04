var
  S = stdin.readLine

for i, c in S:
  if i mod 2 == 1 and c == 'R':
    echo "No"
    quit()

  if i mod 2 == 0 and c == 'L':
    echo "No"
    quit()

echo "Yes"
