include contestlib/imports
import contestlib

var
  (S, T, A, B, U) = read(string, string, int, int, string)

if U == S:
  echo &"{A-1} {B}"
else:
  echo &"{A} {B-1}"
