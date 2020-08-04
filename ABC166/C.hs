import Data.List
import Control.Monad




main = do
    [n,m] <- map read.words <$> getLine :: IO [Int]
    hs <- map read.words <$> getLine :: IO [Int]
    list <- replicateM m (map read.words <$> getLine) :: IO [[Int]]
    print $ length $ filter (answer hs list) [1..n]

answer hs ls k = answer' ls where
    answer' [] = True
    answer' (x:xs) = if reachable x == 0
        then answer' xs
        else (hs!!(k-1) > hs!!(reachable x)) && answer' xs 
    reachable [a,b] = if a == k then b-1 else if b == k then a-1 else 0