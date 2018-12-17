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
let res_four = first_if_true big_number 4 5;;

let is_a_multiple x y =
  x % y = 0
;;

let res_five = is_a_multiple 8 2;;

let tuple_a = (1, "one");;
let tuple_b = (2, "two", 2.);;

let (res_five_x, res_five_y) = tuple_a;;
let (res_six_x, res_six_y, res_six_z) = tuple_b;;
  

let distance (x1, y1) (x2, y2) =
  Float.sqrt ((x1 -. x2) ** 2. +. (y1 -. y2) ** 2.)
;;

let languages = ["OCaml"; "Scheme"; "Rust"; "Typescript"];;
let js_frameworks = "React" :: "Vue" :: "Svelte" :: [];;

let length_of_string_list list =
  List.map ~f:String.length list
;;
  
length_of_string_list languages;;
length_of_string_list js_frameworks;;

[1; 2; 3;] @ [4; 5; 6];;

  
(* pattern matching *)

let my_favorite_language languages =
  match languages with
  | (first :: _) -> first
  | [] -> "Ocaml"
;;

(* recursive fns *)

let rec sum list =
  match list with
  | [] -> 0
  | a :: b -> a + sum b
;;

let wrap_string s =
  "[ " ^ s ^ " ]"
;;

(* wrap list of strings *)
let rec wrap_los los =
  match los with
  | [] -> ""
  | hd :: tl ->
    (wrap_string hd) ^ wrap_los tl
;;
