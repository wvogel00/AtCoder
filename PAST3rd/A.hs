import Data.Char

main = do
    s <- getLine
    t <- getLine
    putStrLn $ answer s t

answer s t
    | s == t = "same"
    | map toLower s == map toLower t = "case-insensitive"
    | otherwise = "different"