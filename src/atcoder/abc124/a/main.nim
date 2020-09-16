include contestlib/imports
import contestlib

var
  (A, B) = read(int, int)

echo (toSeq(1..A) & toSeq(1..B)).sorted[^2..^1].sum
