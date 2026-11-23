:- initialization(main, main).

get_numbers(Numbers) :-
  length(Lines, 4),
  maplist(read_line_to_string(user_input), Lines),
  maplist(number_string, Numbers, Lines).

digit_sum(N, Sum) :-
  number_codes(N, Codes),
  maplist([C, D]>>(D is C - 0'0), Codes, Digits),
  sum_list(Digits, Sum).

factor(N, F) :-
  digit_sum(N, NSum),
  between(11, inf, F),
  Product is N*F,
  digit_sum(Product, PSum),
  PSum =:= NSum.

main :-
  get_numbers(Numbers),
  maplist(factor, Numbers, Factors),
  maplist(writeln, Factors).
