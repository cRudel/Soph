(* 1.1.seven:  that given any value returns 7. *)
	
	(* seven: 'a -> int *)
	let seven x = 7;;
	

(* 1.2.sign:  that given an integer returns 1 if it is positive, -1 if it is negative and 0 if it is zero. *)

	let sign x = if x > 0 then 1
	else if x < 0 then -1
	else 0;;
		
	(* TO DO: add comments to 2, 3, 4, 5, *) 

(* 1.3.absolute:  the absolute value function. *)

	let abs x = if x > 0 then x
	else if x < 0 then x* -1
	else 0;;		(* when doing negatives you have to do: abs (-number) *)


(* 1.4.andp,orp,notp,xorp:  the standard, two argument (except fornotpwhich is unary),boolean connectives (you must resort to if-then-else or amatchstatement). *)

	let andp x y = if x=false || y=false then false
	else true;;

	let orp x y = if x=true || y=true then true
	else false;;
	
	let notp x = if x=true then false
	else true;;

	let xorp x y = if x=y then false
	else true;;

	

(* 1.5.dividesBy:  that given two numbers determines if the first is divisible by the second(use remainder). *)

	let dividesBy x y = 
	if x mod y == 0 then true
	else false;;


(* 1.6.issingleton:  a predicate that, given a list, returns a boolean indicating whether ithas exactly one element.  Provide your solution using thematchconstruct for patternmatching.  Your solution should NOT depend on computing the length of the list. *)

	let isSingleton a = 
	match a with
	|[] -> false
	|[a] -> true
	|h::t -> false;;


(* 1.7.swap:  a  function  that,  given  a  pair,  returns  the  same  pair  except  that  its  first  andsecond components are interchanged. *)

	let swap (x,y) = (y,x);; (*NOTE: Only works with the tuple format *)


(* 1.8.app:  a function that, given two arguments, applies the first argument to the secondone. *)

	let app x y = x y;;



(* 1.9.twice:   a  function  that,  given  two  arguments,  applies  the  first  one  to  the  secondargument and then again to the result. *)

	let twice x y = x (x y);;



(* 1.10.compose:  a function that, given three arguments, applies the second to the third andthen the first to its result. *)
 
	let compose x y z = x (y z);;


(* 2.1.  Define the binary operations of union and intersection and the belongsTo predicate, forsets of type a when such sets are represented as:(a)  Extensionally (i.e.  as a list of elements of type a).(b)  Characteristic function (i.e.  as a predicate of type’a -> bool).This should yield six functions: union_ext, union_char, intersection_ext, intersection_char,belongsTo_ext, belongsTo_char. *)

	let union_ext a b = a @ b;;
	
	let union_char;;

	let rec intersection_ext a b = 
	match a with
	| [] -> []
	| h::t -> 
	

(*	2.2.	remAdjDups that removes adjacent duplicates from a list. Eg.remAdjDups [1;1;2;3;3;1;4;4;4] should return [1;2;3;1;4]. *)

	(* remAdjDups: 'a list -> 'a list *)
	let rec remAdjDups xs = 
	match xs with
	[] -> [];
	| h::s::t -> if h=s then h::remAdjDups t
	else h::s::remAdjDups t

(* 2.3		sublists that computes all the sublists of a list, in any order. Eg.sublists [1;2;3]should produce[[]; [1];[2];[1;2];[3];[1;3];[2;3];[1;2;3]]. Note that, a sublist resultsfrom a list by dropping any number of its elements (without rearranging them). *)

	(* sublists: 'a list -> 'a list list *)
	let rec sublists l =
	match l with
	[] -> [[]]
	| x::xs -> let ls = sublists xs in 
				List.map(fun l->x::l) ls @ls;;


(*		Exercise 3, this is given: *)
type calcExp = 
| Const of int
| Add of (calcExp*calcExp)
| Sub of (calcExp*calcExp)
| Mult of (calcExp*calcExp)
| Div of (calcExp*calcExp)

(* 3.1  Define mapC, a map for calculator expressions. Eg.mapC (fun x -> x + 1) e2 should return Add(Sub(Const(3), Const(4)), Const(5)). *)

	let mapC 




