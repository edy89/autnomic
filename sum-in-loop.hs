main :: IO ()
main = do
    _ <- getLine
    nums <- getLine
    let numList = map read (words nums) :: [Int]
    print $ sum numList
