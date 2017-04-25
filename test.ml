open OUnit2;;

(* Test using an empty list *)
let test_empty test_ctxt = assert_equal [] (Quick_sort.quick_sort []);;

(* Test using a single-element list *)
let test_single test_ctxt = assert_equal [1] (Quick_sort.quick_sort [1]);;

(* Test using an unsorted unique list *)
let unsorted_list1 = [2; 4; 1; 9; 3; 5; 8; 7; 10; 6];;
let unsorted_list1_result = [1; 2; 3; 4; 5; 6; 7; 8; 9; 10];;
let test_unsorted_unique test_ctxt = assert_equal unsorted_list1_result (Quick_sort.quick_sort unsorted_list1);;

(* Test using a sorted unique list *)
let sorted_list1 = [1; 2; 3; 4; 5; 6; 7; 8; 9; 10];;
let sorted_list1_result = [1; 2; 3; 4; 5; 6; 7; 8; 9; 10];;
let test_sorted_unique test_ctxt = assert_equal sorted_list1_result (Quick_sort.quick_sort sorted_list1);;

(* Test using unsorted non-unique list *)
let unsorted_list2 = [2; 7; 4; 1; 9; 3; 5; 4; 5; 8; 7; 7; 10; 2; 6];;
let unsorted_list2_result = [1; 2; 2; 3; 4; 4; 5; 5; 6; 7; 7; 7; 8; 9; 10];;
let test_unsorted_non_unique test_ctxt = assert_equal unsorted_list2_result (Quick_sort.quick_sort unsorted_list2);;

(* Test using sorted non-unique list *)
let sorted_list2 = [1; 1; 2; 3; 3; 3; 3; 4; 5; 6; 7; 8; 8; 8; 9; 10; 10];;
let sorted_list2_result = [1; 1; 2; 3; 3; 3; 3; 4; 5; 6; 7; 8; 8; 8; 9; 10; 10];;
let test_sorted_non_unique test_ctxt = assert_equal sorted_list2_result (Quick_sort.quick_sort sorted_list2);;

let suite =
"suite">:::
 ["test_empty">:: test_empty;
  "test_single">:: test_single;
  "test_unsorted_unique">:: test_unsorted_unique;
  "test_sorted_unique">:: test_sorted_unique;
  "test_unsorted_non_unique">:: test_unsorted_non_unique;
  "test_sorted_non_unique">:: test_sorted_non_unique]
;;

let () = 
	run_test_tt_main suite
;;