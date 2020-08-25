import algorithm

var
  S = stdin.readLine

if S.reversed != S:
  echo "No"
  quit()

if S[0..<(S.len-1) div 2].reversed != S[0..<(S.len-1) div 2]:
  echo "No"
  quit()

if S[(S.len + 3) div 2 - 1..<S.len].reversed != S[(S.len + 3) div 2 - 1..<S.len]:
  echo "No"
else:
  echo "Yes"
