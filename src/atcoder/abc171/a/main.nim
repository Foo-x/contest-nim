include contestlib/imports
import contestlib

var
  c: char

when isMainModule:
  c = read(char)
  if c in 'A'..'Z':
    echo "A"
  else:
    echo "a"
