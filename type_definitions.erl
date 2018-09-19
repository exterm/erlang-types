-module(type_definitions).

-compile(export_all).

-type tree() :: {'leaf', Value::any()}
                | {'node', Left::tree(), Right::tree()}.

-spec example_tree() -> tree().
example_tree() ->
  {node, {leaf, 42}, nil}.

% fix the type error!
