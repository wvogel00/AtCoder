{-# LANGUAGE TypeApplications #-}

import qualified Data.HashMap.Strict as H

main = do
    n <- readLn @Int
    xs <- map read.words <$> getLine :: IO [Int]
    print $ answer n xs

answer :: Int -> [Int] -> Int
answer n hs = sum.H.elems $ H.intersectionWith (*) is js where
    is = hist $ zipWith (-) [1..n] hs
    js = hist $ zipWith (+) [1..n] hs

hist xs = H.fromListWith (+) $ zip xs (repeat 1)