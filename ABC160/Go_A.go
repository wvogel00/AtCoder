package main
import "fmt"
func main(){
    // Your code here!
    var input string
    fmt.Scan(&input)
    if (input[2] == input[3] && input[4] == input[5]){
        fmt.Println("Yes")
    }else{
        fmt.Println("No")
    }
}
