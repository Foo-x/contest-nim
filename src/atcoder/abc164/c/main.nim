include contestlib/imports
import contestlib
import contestlib/algorithm as ca

var
  N = read(int)
  S = read(string, N).deduplicated

echo S.len
