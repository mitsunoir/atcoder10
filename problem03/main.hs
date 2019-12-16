isEven x = (mod x 2) == 0

nDivide :: Int -> Int -> [Int] -> Int
nDivide n n_number nums = if (length . filter isEven $ nums) == n_number then
                         nDivide (n+1) n_number (map (\x -> x `div` 2) nums)
                       else
                         n

main = do
  n_num <- read <$> getLine
  nums  <- fmap (read :: String -> Int) . words <$> getLine
  putStrLn $ show $ nDivide 0 n_num nums
