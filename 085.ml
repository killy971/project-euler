(* vim:set ts=2 sw=2: *)

let rec_card x y = x * (x + 1) * y * (y + 1);;

let rectangles side_max start_diff =
  let rec rects a b diff area =
    if b = 0
    then rects (a - 1) 2000 diff area
    else if a = 0
    then area
    else let d = abs (8000000 - (rec_card a b)) in
    if d < diff
    then rects a (b - 1) d (a * b)
    else rects a (b - 1) diff area
  in rects side_max side_max start_diff 0;;

let _ = print_endline(string_of_int (rectangles 2000 100));;
