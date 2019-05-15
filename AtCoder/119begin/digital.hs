
import Data.List.Split
import Control.Monad

rate :: Double
rate = 380000

bitToJPY :: Double -> Double
bitToJPY bit = do
  bit * rate


sumup :: [(Double, String)] -> Double
sumup tuples = do
  let func = \tuple -> case snd tuple　of
                    "BTC" -> bitToJPY $　fst tuple
                    "JPY" -> fst tuple
  let result = map func tuples
  sum result
  
convert :: String -> (Double, String) -- TODO: 専用型がほしい
convert string = do
  let ws = words string
  let price = read $ head ws :: Double
  let moneyType = head $ tail ws
  (price, moneyType)


main = do
  n <- readLn
  ss <- replicateM n getLine
  let tuples = map convert ss
  putStrLn $ show $ sumup tuples
