(* Add all the natural numbers below one thousand that are multiples of 3 or 5 *)

let rec range_to = function 1 -> [1] | i -> i :: (range_to (i - 1));;

let result () = List.fold_left (+) 0 (List.filter (fun x -> x mod 3 = 0 || x mod 5 = 0) (range_to 999));;

let _ = print_endline (string_of_int (result ()));;
