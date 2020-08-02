include contestlib/imports
import contestlib

when isMainModule:
  var
    n = read(int)
    chars = read(char, n)

  if chars.allIt(it == 'W') or chars.allIt(it == 'R'):
    echo 0
    quit()

  var
    numR = chars.count('R')
    okNumR = chars[0..<numR].count('R')

  echo numR - okNumR
