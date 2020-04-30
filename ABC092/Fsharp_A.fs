let a = stdin.ReadLine() |> int
let b = stdin.ReadLine() |> int
let c = stdin.ReadLine() |> int
let d = stdin.ReadLine() |> int

let train = if a >= b then b else a
let bus = if c >= d then d else c
 
train + bus
|> printfn "%d"