
main = do
  ss <- map (\x -> read [x]) <$> getLine
  putStrLn $ show $ foldl (+) 0 ss
