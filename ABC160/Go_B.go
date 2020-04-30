package main
import "fmt"

func hisHappiness(money int) int{
	var hapiness500 = money / 500 * 1000
	var hapiness5 = (money%500) / 5 * 5

	return hapiness500 + hapiness5
}

func main(){
    // Your code here!
    var money int
    fmt.Scan(&money)
    fmt.Println(hisHappiness(money))
}
