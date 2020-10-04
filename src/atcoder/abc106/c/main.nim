include contestlib/imports
import contestlib
import contestlib/algorithm as ca

var
  S = read(string)
  K = read(int)
  notOneFirst = S.findIf(x => x != '1')

if notOneFirst == -1 or K <= notOneFirst:
  echo 1
else:
  echo S[notOneFirst]
