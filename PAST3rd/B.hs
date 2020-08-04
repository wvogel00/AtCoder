import Control.Monad
import Data.Array

main = do
    [n,m,q] <- map read . words <$> getLine :: IO [Int]
    query <- replicateM q (map read.words <$> getLine) :: IO [[Int]]
    let scoreboard = array ((1,1),(n,m)) [((x,y),0) | x <- [1..n], y <- [1..m]]
    answer n m scoreboard query 

answer _ _ list [] = return ()
answer a b list (q:query)
    | length q == 2 = print getScore >> answer a b list query
    | length q == 3 = answer a b newList query where
        n = q !! 1
        m = q !! 2
        score = 0 `max` (a-correctM-1)
        newList = list // [((x,m),if x == n then score else (list!(x,m)-1) `max` 0)| x <- [1..a]]
        correctM = length $ filter ((/=0).(!) list) [(x,m) | x <- [1..a]]
        getScore = sum $ map ((!) list) [(n,y) | y <- [1..b]]