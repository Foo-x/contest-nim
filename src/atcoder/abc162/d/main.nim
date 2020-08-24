import strutils

var
  N = stdin.readLine.parseInt
  S = stdin.readLine
  result = S.count('R') * S.count('G') * S.count('B')

for i in 0..<N:
  let
    ci = S[i]

  for j in (i+1)..<N:
    let
      cj = S[j]

    if ci == cj:
      continue

    let
      k = 2 * j - i

    if k >= N:
      continue

    let
      ck = S[k]

    if ck != ci and ck != cj:
      result -= 1

echo result
