with Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada;

procedure MinOfTwo is
  n    : Integer := 1;
  a, b : Integer := 0;

begin
  Integer_Text_IO.Get(n);
  Text_IO.Skip_Line;

  while n > 0 loop
    Integer_Text_IO.Get(a);
    Integer_Text_IO.Get(b);
    Text_IO.Skip_Line;
    if a < b then
      Integer_Text_IO.Put(a);
    else 
      Integer_Text_IO.Put(b);
    end if;
    n := n - 1;
  end loop;
  
end MinOfTwo;
