include contestlib/imports
import contestlib
import contestlib/tree/unionfind

var
  (N, M) = read(int, int)
  uf = newUnionFind(N)

M.loop:
  uf.merge(read(int)-1, read(int)-1)

var result = 0

for i in 0..<N:
  result.max= uf.count(i)

echo result
