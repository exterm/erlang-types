-module(fancy_types).

-compile(export_all).

% -spec and_fun(true, true) -> true;
%              (false, true) -> false;
%              (true, false) -> false.
and_fun(true, true)  -> true;
and_fun(false, true) -> false;
and_fun(true, false) -> false.

only_true(true) -> ok.

broken() ->
  only_true(and_fun(true, false)).
