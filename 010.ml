let _ =
  let prime_list = List.rev_map Int64.of_int (Prime.upto 2000000) in
  let sum = List.fold_left Int64.add Int64.zero prime_list in
  print_endline (Int64.to_string sum);;
