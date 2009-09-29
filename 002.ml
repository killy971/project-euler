(* Find the sum of all the even-valued terms in the Fibonacci sequence which do not exceed four million. *)

let fib n =
        let rec fib_pair = function
                1 -> (1, 0, 1)
        |       n -> let (i, j, k) = fib_pair (n - 1) in
                     let f = i + j in 
                     if f mod 2 == 0
                     then (f, i, k)
                     else (f, i, k + f)
        in
        let (_, _, k) = fib_pair n in k;;


let rec range_fib = 
        1 -> [1]
|       i -> i :: (range_to (i - 1));;


