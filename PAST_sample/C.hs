import Control.Monad

main = do
    [n,t] <- map read.words <$> getLine :: IO [Int]
    cts <- replicateM n (map read.words <$> getLine) :: IO [[Int]]
    putStrLn $ pickup $ answer  t cts

pickup [] = "TLE"
pickup cts = show.head $ minimum cts

answer t = filter ((<=t).last)