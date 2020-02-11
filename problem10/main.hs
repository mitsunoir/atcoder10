
movable [] = True
movable (x:xs) = if (x!!0 >= x!!1 + x!!2) && (x!!0 - x!!1 - x!!2) `mod` 2 == 0 then movable xs else False

main = do
  _ <- getLine
  ls <- lines <$> getContents
  let xys = map (map read . words) $ ls
  putStrLn $ if movable xys
             then "Yes"
             else "No"
