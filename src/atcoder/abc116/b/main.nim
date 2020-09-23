import strutils, sequtils

var
  s = stdin.readLine.parseInt
  mem = newSeqWith(1_000_001, true)
  result = 1

while mem[s]:
  mem[s] = false
  s = if s mod 2 == 0:
      s div 2
    else:
      3 * s + 1

  result += 1

echo result
