(* vim:set ts=4 sw=4: *)

(* > ocaml 012.ml 500 *)

(* The sequence of triangle numbers is generated by adding the natural numbers.
 * So the 7^(th) triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The
 * first ten terms would be:
 *
 * 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
 *
 * Let us list the factors of the first seven triangle numbers:
 *
 * 1: 1
 * 3: 1,3
 * 6: 1,2,3,6
 * 10: 1,2,5,10
 * 15: 1,3,5,15
 * 21: 1,3,7,21
 * 28: 1,2,4,7,14,28
 *
 * We can see that 28 is the first triangle number to have over five divisors.
 *
 * What is the value of the first triangle number to have over five hundred
 * divisors? *)

let divs_n n =
    let h = int_of_float (floor (sqrt (float_of_int n))) in
    let rec div_n_rec d i =
        if d > h
        then 2 + 2 * i
        else if n mod d = 0
        then div_n_rec (d + 1) (i + 1)
        else div_n_rec (d + 1) i
    in div_n_rec 2 0;;

let over_n_divs n =
    let rec o5d_rec t i =
        if divs_n t >= n
        then t
        else ((* print_endline (string_of_int t); *) o5d_rec (t + i + 1) (i + 1))
    in o5d_rec 1 1;;

let _ = print_endline (string_of_int (over_n_divs (int_of_string (Sys.argv.(1)))));;
