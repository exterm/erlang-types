-module(implicit_enum).

-export([function_with_case/1,
         other_fun/1]).

function_with_case(1) -> 'a';
function_with_case(2) -> 'b'.

other_fun(Param) ->
  case function_with_case(Param) of
    'a' -> 'A';
    'b' -> 'B';
    'c' -> 'C'
  end.
