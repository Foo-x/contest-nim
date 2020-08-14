include contestlib/imports
import contestlib

when isMainModule:
  var
    n = read(int)
    A = read(int, n)

  var
    kabu = 0
    strategy = "buy" # buy/sell
    current = 200
    cash = 1000

  if A.isSorted(Descending):
    echo cash
    quit()

  for a in A:
    if strategy == "buy":
      if a > current:
        var newKabu = cash div current
        kabu += newKabu
        cash -= current * newKabu
        strategy = "sell"
    else:
      if a < current:
        var newCash = kabu * current
        cash += newCash
        kabu = 0
        strategy = "buy"

    current = a

  if kabu != 0:
    cash += kabu * A[^1]

  echo cash
