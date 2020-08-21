include contestlib/imports
import contestlib

var
  N = read(int)
  K = read(int)
  A = newSeq[bool](N)

K.loop:
  var
    d = read(int)

  d.loop:
    A[read(int)-1] = true

echo A.count(false)
