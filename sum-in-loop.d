import std.array, std.stdio, std.conv;

int main()
{
    /* read amount of numbers from stdin */
    string input = readln();
    int amount = parse!int(input);
    
    /* read numbers from stdin and put in array */
    auto numbers = split(readln());
    /* convert from string to int and add */
    long sum = 0;
    for (uint k = 0; k < numbers.length; k++)
    {
        sum += parse!int(numbers[k]);
    }
    
    sum.writeln;
    
    return 0;
}
