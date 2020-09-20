import strformat, macros, std/algorithm, tables, sets, lists,
    intsets, critbits, sequtils, strutils, std/math, times,
    sugar, options, deques, bitops, heapqueue

const
  InfInt = 1e18.int
  NegInfInt = -1e18.int
  MOD = 10^9 + 7

template loop(n: int, body) = (for _ in 0..<n: body)
template `max=`(x, y) = x = max(x, y)
template `min=`(x, y) = x = min(x, y)
template `mod=`(x, y) = x = x mod y
template `sumMod=`(x, y, m = MOD) = x = (x + y) mod m
template `prodMod=`(x, y, m = MOD) = x = (x * y) mod m
template doWhile(cond, body: untyped): untyped =
  while true:
    body
    if not cond:
      break

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
proc read(t: typedesc[float]): float = readNext().parseFloat

macro read(t: typedesc, n: varargs[int]): untyped =
  var repStr = ""
  for arg in n:
    repStr &= &"({arg.repr}).newSeqWith "
  parseExpr(&"{repStr}read({t})")

macro read(ts: varargs[auto]): untyped =
  var tupStr = ""
  for t in ts:
    tupStr &= &"read({t.repr}),"
  parseExpr(&"({tupStr})")

macro read(n: int, ts: varargs[auto]): untyped =
  for typ in ts:
    if typ.typeKind != ntyAnything:
      error("Expected typedesc, got " & typ.repr, typ)
  parseExpr(&"({n.repr}).newSeqWith read({ts.repr})")
