import sequtils

var
  n = cast[string](stdin.readLine.mapIt(if it == '1': '9' else: '1'))

echo n
