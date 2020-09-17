include contestlib/imports
import contestlib

var
  I = read(int, 5).sortedByIt((it - 1) mod 10).reversed

echo I[0..^2].mapIt(it - 1 + (10 - ((it - 1) mod 10))).sum + I[^1]
