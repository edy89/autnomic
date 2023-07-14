with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO;         use Ada.Text_IO;

procedure Task_3 is
   N : Integer;
   A : Integer;
   B : Integer;
begin
   Get (N);
   for I in 1 .. N loop
      Get (A);
      Get (B);
      Put (A + B, 0);
      if I /= N then
         Put (' ');
      end if;
   end loop;
   New_Line;
end Task_3;
