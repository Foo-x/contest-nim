include contestlib/imports
import contestlib

when isMainModule:
  var
    a = read(int)
    b = read(int)

  echo &"{(a * b)} {(2 * (a + b))}"
