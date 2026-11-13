:- initialization(main, main).


get_bag_ids([BagIDs, K]) :-
  read_line_to_string(user_input, Line1),
  split_string(Line1, " ", "", [SN, SK]),
  maplist(number_string, [_N, K], [SN, SK]),

  read_line_to_string(user_input, Line2),
  split_string(Line2, " ", "", Tokens),
  maplist(number_string, BagIDs, Tokens).


main :-
  get_bag_ids([BagIDs, K]),
  once(nth0(I, BagIDs, K)),
  (
    I =:= 0 -> writeln("fyrst") ;
    I =:= 1 -> writeln("naestfyrst") ;
    I1 is I+1, format("~w fyrst~n", [I1])
  ).
