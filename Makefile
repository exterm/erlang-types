.phony: clean prepare-mac mac-dependencies plt example-1 check-example-1

plt: ~/.dialyzer_plt

~/.dialyzer_plt:
	dialyzer --build_plt --apps erts kernel stdlib

clean:
	rm -f *.hi *.o

example-1: plt
	@echo "-- source: --"
	cat example-1.erl
	@echo
	@echo "-- type analysis: --"
	typer example-1.erl

check-example-1: plt
	@echo "-- source: --"
	cat example-1.erl
	@echo
	@echo "-- type check: --"
	dialyzer -Wunmatched_returns -Werror_handling example-1.erl

prepare-mac: mac-dependencies plt

mac-dependencies:
	brew install erlang
	brew install ghc
