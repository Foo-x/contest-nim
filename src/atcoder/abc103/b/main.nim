include contestlib/imports
import contestlib

var
  S, T = read(string)

for i in 0..<S.len:
  if S[^i..^1] & S[0..^i+1] == T:
    echo "Yes"
    quit()

echo "No"
