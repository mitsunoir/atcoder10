import Control.Monad
import Data.List

main = do
  n <- readLn
  xs <- replicateM n getLine
  print . length . nub $ xs

