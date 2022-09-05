# Ocaml

## assertion
```ml
3 + 2;; (* -> 5 *)
```

## variables
```ml
let a = 5 in (a + 2);; (* -> 7 *)
```

## fonctions

```ml
let f x = x + 2;;
let f (x) = x + 2;;

f 5;; (* -> 6 *)
f (5);; (* -> 6 *)
```

```ml
let g x y = (x * y) + 2;;
g 2 3;; (* -> 7 *)

let g (x, y) = (x * y) + 2;;
g (2, 3);; (* -> 7 *)
```
> ### note:
> ces deux définitions sont incompatibles:
> - `g (x) (y)` ne peut pas être appellée avec un paramètre `(x, y)`
> - `g (x, y)` ne peut pas être appellée avec des paramètres `(x) (y)`

## conditions
```ml
if 3 == 2 then 5 else 4;; (* -> 4 *)
let a = 2 in if a == 2 then 5 else 4;; (* -> 5 *)
```

## définitions récursives
```ml
let rec sum x = if x == 0 then x else x + sum (x - 1);;
sum 3;; (* -> 6 (3 + 2 + 1 + 0) *)
```

## listes
```ml
[1; 2; 3; 4];; (* -> [ 1, 2, 3, 4 ] *)
```

## patternes
```ml
let is_empty l = match l with
    | [] -> true
    | e::r -> false
;;
is_empty [];; (* -> true *)
is_empty [1];; (* -> false *)
```
```ml
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
```