const
  validMonths = ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12"]

var
  S = stdin.readLine
  ym = S[2..^1] in validMonths
  my = S[0..<2] in validMonths

if ym and my:
  echo "AMBIGUOUS"
elif ym:
  echo "YYMM"
elif my:
  echo "MMYY"
else:
  echo "NA"
