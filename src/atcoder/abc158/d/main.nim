include contestlib/imports
import contestlib

var
  (S, Q) = read(string, int)
  prefix = ""
  suffix = ""
  isRev = false

Q.loop:
  if read(int) == 1:
    isRev = not isRev
    continue

  if read(int) == 1:
    if isRev:
      suffix &= read(string)
    else:
      prefix &= read(string)
    continue

  if isRev:
    prefix &= read(string)
  else:
    suffix &= read(string)

S = cast[string](prefix.reversed) & S & suffix
if isRev:
  echo cast[string](S.reversed)
else:
  echo S
