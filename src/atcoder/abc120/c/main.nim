include contestlib/imports
import contestlib

var
  S = read(string)

echo min(S.count("1"), S.count("0")) * 2
