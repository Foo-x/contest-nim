include contestlib/imports
import contestlib

when isMainModule:
  var
    r = read(int)
    c = read(int)
    m = read(int, r, c)

  for i in 0..<r:
    m[i].add m[i].sum

    echo m[i].join(" ")

  echo (0..c).toSeq().map(i => (0..<r).toSeq().map(j => m[j][i]).foldl(a + b)).join(" ")
