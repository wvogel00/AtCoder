import std.stdio;

void main(){
    auto inputs = readln;
    
    if(inputs[2] == inputs[3] && inputs[4] == inputs[5])
        writeln("Yes");
    else
        writeln("No");
}