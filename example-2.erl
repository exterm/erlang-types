-module('example-2').

-compile(export_all).

broken() ->
  convert(random:uniform(2)).

convert(1) -> true.

% no type error, because this can work
% but what are the inferred types?

% Try it:

% $ erl
% 1> c('example-2').
% 2> l('example-2').
% 3> 'example-2':broken().

% Close erlang shell with Ctrl-g q
