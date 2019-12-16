import Control.Monad
import Control.Applicative
import Data.List

isEven :: [Int] -> Int -> Bool
isEven lst idx = ((lst !! idx) `mod` 2) == 0

main :: IO ()
main = do
  ss <- (map read . words) <$> getLine
  if (isEven ss 0) || (isEven ss 1)
  then putStrLn "Even"
  else putStrLn "Odd"
