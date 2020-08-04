main = do
    [n,k] <- map read.words <$> getLine :: IO [Int]
    hs <- map read.words <$> getLine :: IO [Int]
    print $ answer k hs

answer k = length . filter (>=k)