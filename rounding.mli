let rec repeat fn = function
  | 0 -> ()
  | n ->
      fn n;
      repeat fn (n - 1)
in
let div_and_round a b =…
  let a' = float_of_int a in
  let b' = float_of_int b in
  a' /. b' +. 0.5 |> floor |> int_of_float |> Printf.printf "%d "
in
Scanf.scanf "%d " (repeat (fun _ -> Scanf.scanf "%d %d " div_and_round))
