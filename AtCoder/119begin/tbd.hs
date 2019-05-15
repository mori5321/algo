
import Data.List.Split
import Data.Time.Calendar

type DateTime = String


eraName :: Day -> String
eraName day = do
  case beforeHeisei day of
    False -> "TBD"
    True  -> "Heisei"

beforeHeisei :: Day -> Bool
beforeHeisei day
  | day > heiseiEnd = False
  | otherwise       = True

heiseiEnd :: Day
heiseiEnd = fromGregorian 2019 4 30


main = do
  s <- getLine
  let year = head $ map read $ splitOn "/" s :: Integer
  let [month, day] = tail $ map read $ splitOn "/" s :: [Int]
  
  let date =  fromGregorian year month day
  putStrLn $ eraName date
