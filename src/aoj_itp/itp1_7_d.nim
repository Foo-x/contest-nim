import strformat, macros, algorithm, tables, sets, lists,
    intsets, critbits, sequtils, strutils, math, times, sugar

template stopwatch(body) = (let t1 = cpuTime(); body; stderr.writeLine "TIME:",
    (cpuTime() - t1) * 1000, "ms")
template loop(n: int, body) = (for _ in 0..<n: body)
template `max=`(x, y) = x = max(x, y)
template `min=`(x, y) = x = min(x, y)

let readNext = iterator(getsChar: bool = false): string {.closure.} =
  for s in stdin.readAll.split:
    if getsChar:
      for i in 0..<s.len():
        yield s[i..i]
    else:
      yield s

proc read(t: typedesc[string]): string = readNext()
proc read(t: typedesc[char]): char = readNext(true)[0]
proc read(t: typedesc[int]): int = readNext().parseInt

macro read(t: typedesc, n: varargs[int]): untyped =
  var repStr = ""
  for arg in n:
    repStr &= &"({arg.repr}).newSeqWith "
  parseExpr(&"{repStr}read({t})")


when isMainModule:
  var
    n = read(int)
    m = read(int)
    l = read(int)
    a = read(int, n, m)
    b = read(int, m, l)

  for i in 0..<n:
    echo (0..<l).toSeq().map(j => (0..<m).toSeq().map(k => a[i][k] * b[k][j]).sum).join(" ")
