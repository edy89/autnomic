a := 0
OutputArray := []
Loop, read, input.txt
{
    InputArray := StrSplit(A_LoopReadLine, , A_Space)
    for index, element in InputArray
    {
        if (element = "a" or element = "e" or element = "i" or element = "o" or element = "u" or element = "y")
                ++a
    }     
    Str .= a . " "
    a := 0
}
MsgBox %Str%
return
