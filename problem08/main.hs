
cond1 a b c y = 10000 * a + 5000 * b + 1000 * c == y

main = do
  [n,y] <- map read . words <$> getLine
  let combinant = [ [a,b,(n-(b+a))] | a<-[0..n], b<-[0..n],  (n-(a+b) >= 0) && cond1 a b (n-(a+b)) y]
  putStrLn . unwords . map show $ if length combinant > 0 then combinant !! 0 else [-1, -1, -1]
