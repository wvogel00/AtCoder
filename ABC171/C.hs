main = readLn >>= putStrLn.answer

alphabet = ['a'..'z']

answer = map ((!!) alphabet) . reverse . decTo26

decTo26 v
    | v <= 26 = [mod (v-1) 26]
    | otherwise = mod (a-1) 26 : decTo26 b where 
        a = mod v 26
        b = if a == 0 then (div (v-a) 26)-1 else div (v-a) 26