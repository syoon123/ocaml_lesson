(* Problem 1a *)  
let rec subsets xs =
  match xs with
  | [] -> [[]]
  | a::b -> let n = (subsets b) in n @ (List.map n (fun x -> a::x))
;;   

(* Problem 1b *)
let rec choose k xs = match xs with
  | [] -> if k = 0 then [[]] else []
  | a::b ->
     if List.length xs > k
     then let n = choose k b in n @ (List.map (choose (k-1) b) (fun x -> a :: x))
     else [xs]
;;

(* Problem 2a *)
let rec quick_sort xs =
  match xs with
  | [] -> xs
  | x::[] -> xs
  | x::a -> let (p1, p2) = List.partition_tf a (fun s -> s<x) in
            quick_sort(p1) @ (x :: quick_sort(p2))
;;

(* Problem 2b *)
let rec merge_sort xs =

  let rec weave l1 l2 =
    match (l1, l2) with
    | ([], l) -> l
    | (l, []) -> l
    | (m, n) ->
       if (List.hd_exn m < List.hd_exn n)
       then (List.hd_exn m) :: weave (List.tl_exn m) n
       else (List.hd_exn n) :: weave (List.tl_exn n) m
  in

  match xs with
  | [] -> []
  | a::[] -> xs
  | a::tl ->
     let (p1, p2) = List.split_n xs ((List.length xs)/2) in
     weave (merge_sort p1) (merge_sort p2)           
;;  


type 'a binary_tree =
  | Leaf of 'a
  | Node of 'a * 'a binary_tree * 'a binary_tree

(* Problem 3a *)
let symmetric tree =
  
;;

(* Problem 3b *)
let compare_trees tree1 tree2 =
;;

(* Problem 3c *)
let rec inorder tree =
;;

(* Problem 3d *)
let rec preorder tree =
;;

(* Problem 3e *)
let rec postorder tree =
;;

(* Problem 3f *)
let rec max_tree tree =
;;

(* Problem 3g *)
let rec tree_sum tree =
;;

(* Problem 3h *)
let nth_level tree n =
;;
 
(* Problem 3i *)
let depth tree =
;;
  
