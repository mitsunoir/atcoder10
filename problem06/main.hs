import Data.List

main = do
  n <- readLn :: IO Int
  as <- (sortBy (flip compare) . map read . words) <$> getLine :: IO [Int]
  let alice = [ as !! i | i <- [0,2..(length as - 1)] ]
  let bob   = [ as !! i | i <- [1,3..(length as - 1)] ]
  print $ (sum alice) - (sum bob)
