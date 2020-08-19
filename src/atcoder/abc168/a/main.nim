include contestlib/imports
import contestlib

when isMainModule:
  case read(int) mod 10
  of 2, 4, 5, 7, 9:
    echo "hon"

  of 0, 1, 6, 8:
    echo "pon"

  else:
    echo "bon"
