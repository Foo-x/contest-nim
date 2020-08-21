include contestlib/imports
import contestlib

var
  X = read(int)

for i in -150..150:
  for j in -150..150:
    if i^5-j^5 == X:
      echo &"{i} {j}"
      quit()
