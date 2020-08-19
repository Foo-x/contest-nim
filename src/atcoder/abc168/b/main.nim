include contestlib/imports
import contestlib

var
  K: int
  S: string

when isMainModule:
  K = read(int)
  S = read(string)

  if S.len <= K:
    echo S
  else:
    echo S[0..<K] & "..."
