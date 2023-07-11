import Data.Char

getPairSum :: String -> Int
getPairSum s = sum(map read(words s))

main = do
  l <- getContents 
  
  print(map getPairSum(lines l))
