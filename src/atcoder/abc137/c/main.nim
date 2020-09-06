include contestlib/imports
import contestlib

var
  N = read(int)
  C = initCountTable[seq[char]]()

N.loop:
  C.inc(read(string).sorted, 1)

echo toSeq(C.values).mapIt(if it == 1: 0 else: it.binom 2).sum
