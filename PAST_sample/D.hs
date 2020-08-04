main = do
    digits <- getLine
    print $ 2*min (length $ filter (=='0') digits) (length $ filter (=='1') digits)