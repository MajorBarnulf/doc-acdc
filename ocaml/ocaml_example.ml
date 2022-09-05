
(* # assertion *)
3;;


(* # variables *)
let a = 5 in (a + 2);;


(* # fonctions *)
let f x = x + 2;;
let f (x) = x + 2;;

f 5;; (* -> 6 *)
f (5);; (* -> 6 *)

let g x y = x * y + 1;;
g 2 3;; (* -> 7 *)
let g (x, y) = x * y + 1;;
g(2, 3);; (* -> 7 *)


(* # conditions *)
if 3 == 2 then 5 else 4;; (* -> 4 *)
let a = 2 in if a == 2 then 5 else 4;; (* -> 5 *)


(* # définitions récursives *)
let rec sum x = if x == 0 then x else x + sum (x - 1);;
sum 3;; (* -> 6 (3 + 2 + 1 + 0) *)


(* # listes *)
[1; 2; 3; 4];; (* -> [ 1, 2, 3, 4 ] *)


(* # patternes *)
let is_empty l = match l with
    | [] -> true
    | e::r -> false
;;
is_empty [];; (* -> true *)
is_empty [1];; (* -> false *)


let rec count_elements l = match l with
    | [] -> 0
    | e::r -> 1 + count_elements r
;;
count_elements [];; (* -> 0 *)
count_elements [1; 2];; (** -> 2 (
    c_e [ 1, 2 ]
    (1) + c_e [ 2 ]
    (1) + c_e []
    (0)
) *)
