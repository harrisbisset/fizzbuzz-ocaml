Learning Ocaml, starting with fizzbuzz

## October 31 2024:
Refactored to a better solution, did look at a better solution after I wrote it the first time, but that was 2 months ago. Just tried to use what I learned from that.

## August 2024:
After looking at other implementations, i'm still writing very imperatively, but i don't know enough language features yet to put everything into a single match case
```ocaml
let invalid_args: _ =
	fun () ->
	begin
		print_endline "invalid number of arguements given";
		exit 1;
	end;;
	

let starting_vals: int list = 
	match Sys.argv with
	| [|_;x;y|] -> 
		if x < y then [int_of_string x; int_of_string y]
		else invalid_args ();

	| _ -> 
		invalid_args ();;


let if_mod (num: int) (modulo: int): bool =
	(num mod modulo) = 0;;

let if_mod_print (num: int) (modulo: int) (word: string) = 
	if if_mod (num) (modulo) then print_string word;;


for i = List.nth starting_vals 0 to List.nth starting_vals 1 do
	if_mod_print (i) (3) ("fizz");
	if_mod_print (i) (5) ("buzz");
		
	if if_mod (i) (3) || if_mod (i) (5) then 
		print_endline "" 
	else 
		print_endline (string_of_int i);
done;;
```
