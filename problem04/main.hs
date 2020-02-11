main :: IO ()
main = do
  a <- readLn
  b <- readLn
  c <- readLn
  x <- readLn
  print . length $ [ 1 | a1 <- [0..a], b1 <- [0..b], c1 <- [0..c], a1*500+b1*100+c1*50==x ]
