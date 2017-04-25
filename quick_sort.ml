(* Quick sort algorithm *)

let list1 = [3; 5; 6; 4; 1; 2];;

let rec partition n p l = 
	match (n, l) with
	| (0, _)-> ([], [])
	| (_, h::t) when (h <= p)-> let (left, right) = partition (n-1) p t in
									(h::left, right)
	| (_, h::t)-> let (left, right) = partition (n-1) t in 
									(left, h::right)

let rec quick_sort l = 
	let p = (List.nth l List.length l-1)
	let (left, right) = partition ((List.length l)-1) p l
	quick_sort left
	quick_sort right
	left::p::right

let print_list l = 
	List.iter (Printf.printf "%d\n") (quick_sort l);;

print_list list1;;