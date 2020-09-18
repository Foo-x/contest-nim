const targets = ['A', 'C', 'G', 'T']
var
  S = stdin.readLine
  cur = 0
  max = 0

for c in S:
  if c notin targets:
    cur = 0
  else:
    cur += 1
    max = max(max, cur)

echo max
