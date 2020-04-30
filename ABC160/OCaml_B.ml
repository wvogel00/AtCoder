let hisHappiness money = 
	let hapiness500 = money / 500 * 1000 in
	let hapiness5 = (money mod 500) / 5 * 5 in
	hapiness500 + hapiness5 ;;
let () = read_line() |> int_of_string |> hisHappiness |> string_of_int |> print_string