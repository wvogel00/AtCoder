main = readLn >>= putStrLn.show.answer

answer money = happiness500 + happiness5 where
    happiness500 = money `div` 500 * 1000
    happiness5 = (money `mod` 500) `div` 5 * 5