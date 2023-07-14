with Ada.Integer_Text_IO, Ada.Float_Text_IO;
procedure Rounding is
    package I_IO renames Ada.Integer_Text_IO;
    package F_IO renames Ada.Float_Text_IO;
    dividend, divisor : Float;
    n : Integer;
begin
    I_IO.Get(n);
    while n > 0 loop
        F_IO.Get(dividend);
        F_IO.Get(divisor);
        I_IO.Put(Integer(Float'Rounding(dividend/divisor)));
        n := n - 1;
    end loop;
end Rounding;
