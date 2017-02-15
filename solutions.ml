(* Problem 1 *)  
let rec subsets xs =
  match xs with
  | [] -> [[]]
  | a::b -> let n = (subsets b) in n @ (List.map n (fun x -> a::x))
;;   
subsets [1;2;3];;
  
(* Problem 2 *)
let rec choose k xs = match xs with
  | [] -> if k = 0 then [[]] else []
  | a::b ->
     if List.length xs > k
     then let n = choose k b in n @ (List.map (choose (k-1) b) (fun x -> a :: x))
     else [xs]
;;
choose 2 [1;2;3;4];;
  
(* Problem 3 *)
let rec quick_sort xs =
  match xs with
  | [] -> xs
  | x::[] -> xs
  | x::a -> let (p1, p2) = List.partition_tf a (fun s -> s<x) in
            quick_sort(p1) @ (x :: quick_sort(p2))
;;
quick_sort [2;6;9;3;5;8;4;1;7];;

(* Problem 4 *)
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
merge_sort [2;6;9;3;5;8;4;1;7];;

