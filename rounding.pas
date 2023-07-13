var  {Global variable declarations}
   number_a, number_b: real;
   amount, i:integer;
 procedure process; {Create procedure to get and divide the numbers}
 begin
 for i := 1 to amount do {For from 1 to first numer obtained (amount)}
   begin
     readln (number_a, number_b); {Get user values}
     Write (number_a / number_b:3:0,' '); {Divide and rounding to zero decimals}
   end; {End of for}
 end;

 begin
   readln(amount); {Get maximum of numbers }
   process; {Call, operations procedure}
 end.
