include contestlib/imports
import contestlib

var
  (H, W, h, w) = read(int, int, int, int)

echo H*W - W*h - H*w + h*w
