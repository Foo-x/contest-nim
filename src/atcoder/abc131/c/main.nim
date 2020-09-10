include contestlib/imports
import contestlib

var
  (A, B, C, D) = read(int, int, int, int)
  bc = B div C
  ac = (A-1) div C
  bd = B div D
  ad = (A-1) div D
  lcmCD = C.lcm(D)
  bcd = B div lcmCD
  acd = (A-1) div lcmCD
  candiv = (bc - ac) + (bd - ad) - (bcd - acd)

echo (B - A + 1) - candiv
