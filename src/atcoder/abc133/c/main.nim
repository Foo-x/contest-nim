include contestlib/imports
import contestlib

var
  (L, R) = read(int, int)
  rem = L mod 2019

if L + 2019 - rem <= R:
  echo 0
else:
  var result = 2020

  for i in L..<R:
    for j in i+1..R:
      result.min= i * j mod 2019

  echo result
