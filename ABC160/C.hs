main = do
    [k,n] <- map read.words <$> getLine :: IO [Int]
    vs <- map read.words <$> getLine :: IO [Int]
    putStrLn.show $ answer k n vs

answer k n vs = k - maxDistance where
    maxDistance = foldl max (head vs+k-last vs).map (uncurry (flip (-))) $ zip vs (tail vs)
