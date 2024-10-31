let () =
  let rec fbuzz n =
    if n > 0
    then (
      match [ n mod 3; n mod 5 ] with
      | [ 0; 0 ] -> print_endline "fizzbuzz"
      | [ _; 0 ] -> print_endline "buzz"
      | [ 0; _ ] -> print_endline "fizz"
      | _ -> print_endline @@ string_of_int n);
    fbuzz (n - 1)
  in
  fbuzz (int_of_string Sys.argv.(1))
;;
