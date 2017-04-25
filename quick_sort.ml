(* Quick sort algorithm *)

let rec partition p l = 
	match l with
	| []-> ([], [])
	| h::t when (h <= p)-> let (left, right) = partition p t in
									(h::left, right) 
	| h::t-> let (left, right) = partition p t in 
									(left, h::right)

let rec quick_sort l = 
	match l with
	| []-> []
	| h::t -> let (left, right) = partition h t in
				let sortedLeft = quick_sort left in
				let sortedRight = quick_sort right in
				sortedLeft @ h::sortedRight

let print_list l = 
	List.iter (Printf.printf "%d\n") (quick_sort l);;