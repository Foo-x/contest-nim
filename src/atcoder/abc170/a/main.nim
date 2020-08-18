include contestlib/imports
import contestlib

when isMainModule:
  var result = newSeqOfCap[int](5)
  for i, x in read(int, 5):
    if x == 0:
      result.add(i+1)

  echo result.join(" ")
