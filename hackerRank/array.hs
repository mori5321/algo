
simpleArraySum :: [Integer] -> Integer
simpleArraySum [] = 0
simpleArraySum (x:xs) = x + simpleArraySum(xs)