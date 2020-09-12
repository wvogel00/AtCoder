import qualified Data.ByteString.Char8 as B

main = do
    s <- B.getLine
    t <- B.getLine
    print $ answer s t

answer :: B.ByteString -> B.ByteString -> Int
answer s t = minimum $ map (count . (,) t) . take (B.length s - B.length t + 1) $ B.tails s 

count :: (B.ByteString,B.ByteString) -> Int
count (t,s)
    | t == B.empty || s == B.empty = 0
    | B.head s == B.head t = count (B.tail t, B.tail s)
    | B.head s /= B.head t = 1 + count (B.tail t, B.tail s)