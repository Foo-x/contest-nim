include contestlib/imports
import contestlib

when isMainModule:
  var
    n = read(int)
    H = read(int, n)

  for i in 0..<n:
    stdout.write &"node {i+1}: key = {H[i]},"
    if i != 0:
      stdout.write &" parent key = {H[(i+1) div 2 - 1]},"

    if (i+1)*2 <= n:
      stdout.write &" left key = {H[(i+1)*2-1]},"

    if (i+1)*2+1 <= n:
      stdout.write &" right key = {H[(i+1)*2]},"

    echo ""
