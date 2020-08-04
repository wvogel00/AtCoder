main = getLine >>= putStrLn.answer

answer "ABC" = "ARC"
answer "ARC" = "ABC"