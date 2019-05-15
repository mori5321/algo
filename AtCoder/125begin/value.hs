

surplus :: (Int, Int) -> Int
surplus (value, cost)
    | value > cost = value - cost
    | value <= cost = 0


main = do
  args0 <- getLine
  args1 <- getLine
  args2 <- getLine
  let values = map read $ words args1 :: [Int]
  let costs = map read $ words args2 :: [Int]
  let result = sum $ map surplus $ zip values costs
  putStr $ show result