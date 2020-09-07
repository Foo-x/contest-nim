import strutils

var
  S = stdin.readLine
  lastRIndex = 0
  firstLIndex = -1
  rs = 0
  result = newSeq[int](S.len)

for i, c in S:
  if c == 'R':
    lastRIndex = i
    firstLIndex = -1
    rs += 1
  elif firstLIndex == -1:
    firstLIndex = i
    result[firstLIndex] += rs div 2 + 1
    result[lastRIndex] += rs div 2 + rs mod 2
    rs = 0
  elif (i - firstLIndex) mod 2 == 0:
    result[firstLIndex] += 1
  else:
    result[lastRIndex] += 1

echo result.join(" ")
