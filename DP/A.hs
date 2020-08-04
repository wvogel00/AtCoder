import Data.Array

main = do
    n <- readLn
    scaffolds <- listArray (1,n).map read.words <$> getLine
    print.answer n $ scaffolds

answer :: Int -> Array Int Int -> Int
answer n xs = 
    let ans = array (1,n) $ (n,0) : (n-1, n `dist` (n-1)) : [ (j, min (ans!(j+1) + j`dist`(j+1)) (ans!(j+2) + j`dist`(j+2)) ) | j <- [1..n-2]]
    in ans!1 where
        dist a b = abs $ (xs!a) - (xs!b)