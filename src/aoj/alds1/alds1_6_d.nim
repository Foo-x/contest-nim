include contestlib/imports
import contestlib

const MAX_W = 10_000

when isMainModule:
  var
    n = read(int)
    W = read(int, n)
    sortedW = W.sorted
    minW = W.min
    nthSorted = newSeq[bool](n)
    result = 0

  for i in 0..<n:
    if nthSorted[i]:
      continue

    var
      cursor = i
      swapSum = 0
      swapMin = MAX_W
      swapNum = 0

    while not nthSorted[cursor]:
      nthSorted[cursor] = true
      swapNum += 1

      var
        w = W[cursor]

      swapMin .min= w
      swapSum += w
      cursor = sortedW.find(w)

    var
      normalSum = swapSum + (swapNum - 2) * swapMin
      # シンプルにswap群の合計
      # 第1項はswapした値のsum
      # 第2項は最小値で(swapNum - 1)回swapしている分
      # swapSumの中に最小値がすでに含まれているので(swapNum - 2)
      minPivotSum = swapMin + swapSum + (swapNum + 1) * minW
      # swap群の最小値と全体の最小値を入れ替えてからまた戻した合計
      # 第1項はswap群の最小値と全体の最小値を入れ替えて発生したswap群の最小値の分
      # 第2項はswap群の合計
      # 第3項は全体の最小値をswapした合計
      # swap群の中でswapした回数 + swap群の最小値と入れ替えたときの1回

    result += min(normalSum, minPivotSum)

  echo result
