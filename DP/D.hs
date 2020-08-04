-- knapsack
import Control.Monad
import Data.List

main = do
    [n,w] <- map read.words <$> getLine
    goods <- replicateM n (format.map (read).words <$> getLine) :: IO [(Int,Int)]
    print $ answer w goods

format (a:b:_) = (a,b)

answer :: Int -> [(Int,Int)] -> Int
answer w = fst.maximum.map (judge w).subsequences

judge capacity list = if sum (map fst list) > capacity
    then (0,0)
    else (sum $ map snd list, sum $ map fst list)
    