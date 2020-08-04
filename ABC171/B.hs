import Data.List

main = do
    [n,k] <- map read.words <$> getLine :: IO [Int]
    ps <- map read.words <$> getLine :: IO [Int]
    print $ answer k ps

answer k = sum.take k.sort