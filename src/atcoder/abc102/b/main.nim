include contestlib/imports
import contestlib

var
  N = read(int)
  A = read(int, N).sorted

echo A[^1] - A[0]
