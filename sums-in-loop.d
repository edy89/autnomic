import std.array, std.conv, std.stdio;

int main()
{
    /* read from stdin */
    string input = readln();
    uint sums = parse!uint(input);
    
    /* repeatedly read stdin with pairs, convert and add */
    int[] s;
    for (uint k = 0; k < sums; k++)
    {
        auto ss = split(readln());
        s ~= (parse!int(ss[0]) + parse!int(ss[1]));
    }
    
    for (uint k = 0; k < s.length; k++) write(s[k], " ");
    writeln;
    
    return 0;
}
