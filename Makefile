.phony: plt example-1 example-2

plt: ~/.dialyzer_plt

~/.dialyzer_plt:
	dialyzer --build_plt --apps erts kernel stdlib

example-1: plt
	@echo "-- source: --"
	cat example-1.erl
	@echo
	@echo "-- type analysis: --"
	typer example-1.erl

example-2: plt
	@echo "-- source: --"
	cat example-2.erl
	@echo
	@echo "-- type analysis: --"
	typer example-2.erl
