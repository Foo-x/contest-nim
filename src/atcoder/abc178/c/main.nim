include contestlib/imports
import contestlib
import contestlib/math/modint

var
  N = read(int)

if N == 1:
  echo 0
  quit()
elif N == 2:
  echo 2
  quit()

var
  result = 10.modpow(N, MOD).toModInt(MOD)
  A = 9.modpow(N, MOD).toModInt(MOD)
  B = 8.modpow(N, MOD)

result -= 2*A
result += B

echo result.v
