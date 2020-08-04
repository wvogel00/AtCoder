import Data.Char

main = getLine >>= putStrLn.judge.isUpper.head

judge True = "A"
judge False = "a"