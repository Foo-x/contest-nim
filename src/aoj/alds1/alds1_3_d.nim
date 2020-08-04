include contestlib/imports
import contestlib

when isMainModule:
  var S = read(string)

  var
    stack = newSeq[int]()
    floods = newSeq[(int, int)]()

  for i in 0..<S.len:
    case S[i]:
    of '/':
      if stack.len == 0:
        continue

      var
        begin = stack.pop()
        area = i - begin

      let inclAreaIndex = floods.lowerBound(begin, (x, k) => x[0] - k)
      if inclAreaIndex != floods.len:
        area += floods[inclAreaIndex..^1].mapIt(it[1]).sum
        floods.delete(inclAreaIndex, floods.len - 1)

      floods.add((begin, area))

    of '\\':
      stack.add i

    else:
      discard

  echo floods.mapIt(it[1]).sum
  echo floods.len, " ", floods.mapIt(it[1]).join(" ")
