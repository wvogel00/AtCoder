import Control.Monad

main = do
    _ <- getLine
    board <- replicateM 5 getLine
    putStrLn.show $ answer board

answer :: [String] -> Int
answer board = (flip (-) 1) $ foldl f 0 [0..length board-1] where
    f cnt i  = if alldot i then cnt+1 else cnt
    alldot i = all (=='.') $ map ((flip (!!) i).((!!) board)) [0..4]