(* Quick sort algorithm *)
let rec partition n p l = 
	match (n, l) with
	| (0, _)-> ([], [])
	| (_, [])-> ([], [])
	| (_, h::t) when (h <= p)-> let (left, right) = partition (n-1) p t in
									(h::left, right)
	| (_, h::t)-> let (left, right) = partition (n-1) p t in 
									(left, h::right)

let rec quick_sort l = 
	match l with
	| []-> []
	| h::t -> let last = (List.length l)-1 in
				let p = List.nth l last in
				let (left, right) = partition last p l in
				let sortedLeft = quick_sort left in
				let sortedRight = quick_sort right in
				sortedLeft @ p::sortedRight

let print_list l = 
	List.iter (Printf.printf "%d\n") (quick_sort l);;