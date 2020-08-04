import Control.Monad
import Data.Array

main = do
    [n,m,q] <- map read . words <$> getLine :: IO [Int]
    vs <- replicateM m (map read.words <$> getLine) :: IO [[Int]]
    color <- map read.words <$> getLine :: IO [Int]
    query <- replicateM q (map read.words <$> getLine) :: IO [[Int]]
    let branch = mkBranch vs [1..n]
    answer branch (zip [1..] color) query

mkBranch _ [] = []
mkBranch vs (i:ns) = (i,foldl f [] vs) : mkBranch vs ns where
    f xs [a,b] = if i == a then b:xs else if i == b then a:xs else xs

answer branch nodes [] = return ()
answer branch nodes (q:query)
    | length q == 2 = print (snd $ nodes !! (x-1)) >> answer branch newNodes1 query
    | length q == 3 = print (snd $ nodes !! (x-1)) >> answer branch newNodes2 query where
        x = q !! 1
        y = q !! 2
        newNodes1 = case lookup x branch of
            Just a -> map (\(i,c) -> if any (==i) a then (i,snd $ nodes!!(x-1)) else (i,c)) nodes
            Nothing -> []
        newNodes2  = map (\(i,c) -> if i == x then (i,y) else (i,c) ) nodes