let judge str = str.[2] == str.[3] && str.[4] == str.[5];;
let answer flag = match flag with
	| true -> "Yes"
	| false -> "No";;
let () = judge(read_line()) |> answer |> print_string