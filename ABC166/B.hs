import Data.List
import Control.Monad

getList :: IO (Int,[Int])
getList = (,) <$> readLn <*> (map read.words <$> getLine)

main = do
    [n,k] <- map read.words <$> getLine
    ls <- replicateM k getList
    print $ answer n (nub.concat $ map snd ls)

answer :: Int -> [Int] -> Int
answer n ls = length $ filter (not.flip elem ls) [1..n]
