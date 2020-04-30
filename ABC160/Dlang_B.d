import std.stdio;
import std.conv;
import std.string;

int maximizeHapiness(int money)
{
	int hapiness500 = money / 500 * 1000;
	int hapiness5 = (money%500) / 5 * 5;

	return hapiness500 + hapiness5;
}

void main(){
    string[] input = split(readln());
    auto money = to!int(input[0]);

    writeln(maximizeHapiness(money));
}