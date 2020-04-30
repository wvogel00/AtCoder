fun main(args: Array<String>) {
    val n = readLine()!!.toInt()
    val vs: List<Int> = readLine()!!.split(" ").map { it.toInt() }
    val cs: List<Int> = readLine()!!.split(" ").map { it.toInt() }
    
    var totalprice = 0
    
    for(i in 0 until vs.size){
        if(vs[i] - cs[i] >= 0)
        totalprice += + vs[i] - cs[i]
    }
    
    println(totalprice)
}
