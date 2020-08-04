main = readLn >>= putStrLn.format.answer

format (a,b) = show a ++ " " ++ show b

answer :: Integer -> (Integer,Integer)
answer x = head $ filter judge [(a,b) | a <- [-120..120], b <- [-120..120]] where
    judge (a,b) = x == a^5 - b^5