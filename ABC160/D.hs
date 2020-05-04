import qualified Data.Vector.Unboxed as VU

main = do
    [n,x,y] <- map read.words <$> getLine :: IO [Int]
    VU.mapM_ print $ answer n x y

answer :: Int -> Int -> Int-> VU.Vector Int
answer n x y = VU.accum (+) (VU.replicate (n-1) 0) [len (i,j) | i <- [1..n-1], j <- [(i+1)..n]] where
    len (i,j) = (minimum [abs (j-i), routexy, routeyx]-1, 1) where
        routexy = abs (x-i) + 1 + abs (y-j)
        routeyx = abs (y-i) + 1 + abs (x-j)