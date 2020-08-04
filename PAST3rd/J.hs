main = do
    [childN, n] <- map read.words <$> getLine :: IO [Int]
    sushis <- map read.words <$> getLine :: IO [Int]
    answer (zip [1..childN] (repeat [])) sushis

answer _ [] = return ()
answer children (sushi:xs) = print who >> answer children' xs where
    who = eat sushi children
    children' = if who == -1
        then children
        else update who sushi children

update _ _ [] = []
update who sushi ((i,vs):cs) = if i == who then (i,sushi:vs):cs else (i,vs):update who sushi cs

eat _ [] = -1
eat sushi ((child, eaten):cs) = if elem sushi eaten || any (>=sushi) eaten
    then eat sushi cs
    else child