.phony: prepare-mac mac-dependencies plt example-1 example-2 example-3

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

example-3: plt
	@echo "-- source: --"
	cat example-3.erl
	@echo
	@echo "-- type analysis: --"
	typer example-3.erl

check-example-3: plt
	@echo "-- source: --"
	cat example-3.erl
	@echo
	@echo "-- type analysis: --"
	typer example-3.erl

prepare-mac: mac-dependencies plt

mac-dependencies:
	brew install erlang
	brew install ghc
