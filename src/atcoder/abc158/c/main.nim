include contestlib/imports
import contestlib

var
  (A, B) = read(int, int)

for i in 10..1000:
  if i * 8 div 100 == A and i * 10 div 100 == B:
    echo i
    quit()

echo -1
