include ../ctemplate

when isMainModule:
  var
    a = read(int).toFloat
    b = read(int).toFloat
    C = read(int).toFloat

  var
    radC = C.degToRad
    h = b * sin radC
    S = a * h / 2
    c = sqrt(a^2 + b^2 - 2 * a * b * cos radC)
    L = a + b + c

  echo S
  echo L
  echo h
