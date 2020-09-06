include contestlib/imports
import contestlib

var
  (K, X) = read(int, int)

echo toSeq(X-K+1..X+K-1).join(" ")
