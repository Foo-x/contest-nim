include contestlib/imports
import contestlib

when isMainModule:
  var
    result = newSeq[int]()

  for a in stdin.readAll.splitWhitespace:
    if a == "+":
      result.add result.pop() + result.pop()
    elif a == "-":
      let (v1, v2) = (result.pop(), result.pop())
      result.add v2 - v1
    elif a == "*":
      result.add result.pop() * result.pop()
    else:
      result.add a.parseInt

  echo result[0]
