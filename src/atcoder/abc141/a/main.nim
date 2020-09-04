var
  S = stdin.readLine
  A = ["Sunny", "Cloudy", "Rainy"]

echo A[(A.find(S) + 1) mod 3]
