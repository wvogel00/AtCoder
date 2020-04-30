let n = stdin.ReadLine() |> int
let dx = stdin.ReadLine().Split(' ') |> Array.map int

let mutable restChoco = dx.[1]

for i in [1..n] do
    let span = stdin.ReadLine() |> int
    restChoco <- restChoco + 1 + ((dx.[0]-1)/span)
done

restChoco
|> printfn "%d"
