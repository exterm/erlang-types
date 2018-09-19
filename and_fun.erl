-module(and_fun).

-compile(export_all).

and_fun(true,true) -> true;
and_fun(false,X)   -> false;
and_fun(X,false)   -> false.

% can you change the code so `typer` infers `and_fun(boolean(),boolean()) -> boolean()` ?
