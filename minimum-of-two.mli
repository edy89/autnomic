open Printf
open List

let value x = x

let n = read_int()

let splitting line =
  map int_of_string (String.split_on_char ' ' line)

let rec read_num i a =
  if i >= n-1 then [a]
  else a :: read_num (i+1) (splitting (read_line()))

let niter = read_num 0 (splitting (read_line()))

let f elem =
  printf "%d " (min (nth elem 0) (nth elem 1))

let() =
  iter f niter;
  print_string "\n"
