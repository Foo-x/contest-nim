var
  S = stdin.readLine
  b = 'a'

for c in S:
  if c == b:
    echo "Bad"
    quit()

  b = c

echo "Good"
