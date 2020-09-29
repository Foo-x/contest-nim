import strutils

var
  N = stdin.readLine.parseInt

for i in 1..9:
  if i * 111 >= N:
    echo i * 111
    quit()
