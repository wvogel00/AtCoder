import qualified Data.ByteString.Char8 as B
import Data.Maybe

main = do
    [d,t,s] <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    putStrLn $ answer d t s

answer d t s
    | t*s >= d = "Yes"
    | otherwise = "No"