
satisfy n = sum [ (n `mod` (10 ^ (i+1))) `div` (10 ^ i) | i <- [0..4] ]

main = do
  [n,a,b] <- (map read . words) <$> getLine
  print . sum $ [ i  | i <- [1..n], a <= (satisfy i), (satisfy i) <= b]
