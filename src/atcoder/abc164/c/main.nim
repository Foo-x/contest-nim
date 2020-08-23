include contestlib/imports
import contestlib
import contestlib/calgorithm

var
  N = read(int)
  S = read(string, N).deduplicated

echo S.len
