include contestlib/imports
import contestlib

var
  N = read(int)
  V = read(int, N)
  hN = N div 2
  O, E = newSeqUninitialized[int](hN)

for i in 0..<N:
  if i mod 2 == 0:
    E[i div 2] = V[i]
  else:
    O[i div 2] = V[i]

var
  OCT = O.toCountTable
  OKV = newSeqOfCap[tuple[k, v: int]](hN)

OCT.sort()

for kv in OCT.pairs:
  OKV.add kv

var
  ECT = E.toCountTable
  EKV = newSeqOfCap[tuple[k, v: int]](hN)

ECT.sort()

for kv in ECT.pairs:
  EKV.add kv

if OKV[0][0] != EKV[0][0]:
  echo hN - OKV[0][1] + hN - EKV[0][1]
  quit()

if OKV.len == 1 and EKV.len == 1:
  echo hN
  quit()

if OKV.len == 1 and EKV.len != 1:
  echo hn - EKV[1][1]
  quit()

if OKV.len != 1 and EKV.len == 1:
  echo hn - OKV[1][1]
  quit()

if OKV[0][1] + EKV[1][1] < OKV[1][1] + EKV[0][1]:
  echo hn - OKV[1][1] + hn - EKV[0][1]
else:
  echo hn - OKV[0][1] + hn - EKV[1][1]
