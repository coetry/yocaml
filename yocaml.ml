open Core;;

let sum_if_true test x y =
  (if test x then x else 0) +
  (if test y then y else 0);;

let even x = x % 2 = 0;;

let res_one = sum_if_true even 4 5;;

let ratio x y =
  let open Float in
  of_int x / of_int y;;

let res_two = ratio 4 5;;

    
    
