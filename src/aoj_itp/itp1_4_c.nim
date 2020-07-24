include ../ctemplate

when isMainModule:
  var
    a: int
    op: char
    b: int

  while op != '?':
    a = read(int)
    op = read(char)
    b = read(int)

    if op == '+':
      echo a + b
    elif op == '-':
      echo a - b
    elif op == '*':
      echo a * b
    elif op == '/':
      echo a div b
