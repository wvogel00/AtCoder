main = do
    [a,r,n] <- map read.words <$> getLine :: IO [Integer]
    putStrLn $ answer a r n

answer a r n = if log (10^9/fromIntegral a) < (fromIntegral n-1) * log (fromIntegral r)
    then "large"
    else show value where
    value = a*r^(n-1)