include contestlib/imports
import contestlib

var
  N = read(int)
  min = read(int, 5).min
  cnt = ceil N / min

echo int cnt + 4
