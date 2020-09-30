include contestlib/imports
import contestlib

var
  I = read(int, 3).sorted(Descending)

echo I[0] * 10 + I[1] + I[2]
