include contestlib/imports
import contestlib

when isMainModule:
  var
    n = read(int)

  if n >= 30:
    echo "Yes"
  else:
    echo "No"
