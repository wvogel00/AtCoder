import Control.Monad
import Data.List

main = do
    n <- readLn :: IO Int
    ss <- group.sort.concat <$> replicateM n getLine :: IO [String]
    putStrLn $ answer n ss

answer n ss = if length (concat doubleStr) < div n 2
    then "-1"
    else if even n
        then subStr ++ reverse subStr
        else subStr ++ [head (last ss)] ++ subStr where
    doubleStr = filter ((>=2).length) ss
    n' = div n 2
    subStr = take n' $ f n' doubleStr

f 0 _ = []
f i (s:ss) = take num s ++ f (i-num) ss where
    num = length s `div` 2