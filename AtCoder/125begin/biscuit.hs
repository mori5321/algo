

biscuitCount :: (Int, Int, Int) -> Int
biscuitCount (a, b, t) = b * div t a

main = do
  args <- getLine
  let [a, b, t] = map read $ words args :: [Int]
  putStrLn $ show biscuitCount (a, b, t)