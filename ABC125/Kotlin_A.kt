fun main(args: Array<String>) {
    // Your code here!
    val list: List<Int> = readLine()!!.split(" ").map { it.toInt() }
    
    val answer = (list[2]/list[0]) * list[1]
    
    println(answer)
}
