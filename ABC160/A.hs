main = getLine >>= putStrLn.answer

answer [_,_,a,b,c,d] = if a == b && c == d then "Yes" else "No"