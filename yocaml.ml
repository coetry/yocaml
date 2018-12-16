open Core;;

let sum_if_true test x y =
  (if test x then x else 0) +
  (if test y then y else 0)
;;

let even x =
  x % 2 = 0
;;

let res_one = sum_if_true even 4 5;;

let ratio x y =
  let open Float in
  of_int x / of_int y
;;

let res_two = ratio 4 5;;

let first_if_true test x y =
  if test x then x else y
;;

let long_string s = String.length s > 6;;
let big_number n = n > 3;;

let res_three = first_if_true long_string "first" "second";;
let rest_four = first_if_true big_number 4 5;;

let is_a_multiple x y =
  x % y = 0
;;
  




    
    
