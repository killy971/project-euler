let primes_upto n =
  let root = 1 + int_of_float (sqrt (float_of_int n)) in
  let rec sieve_rec i a prime_list =
    if i >= n then
      List.rev prime_list
    else
      sieve_rec (i + 2) (
        if i < root then
          let k = 2 * i in 
          let rec rem_mult arr j =
            if j >= n then
              arr
            else
              rem_mult ((Array.set arr j true); arr) (k + j)
          in rem_mult a (i * i)
        else
          a
      ) (if (Array.get a i) = false then
    i :: prime_list
          else
        prime_list)
  in sieve_rec 3 (Array.make n false) [2];;
