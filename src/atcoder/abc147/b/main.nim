var
  S = stdin.readLine
  result = 0

for i in 0..<S.len div 2:
  if S[i] != S[^(i+1)]:
    result += 1

echo result
