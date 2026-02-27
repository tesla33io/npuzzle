JULIA = julia
PROJECT = .
ENTRY = src/main.jl
TEST_ENTRY = tests/tests.jl

all: deps

deps:
	$(JULIA) --project=$(PROJECT) -e 'using Pkg; Pkg.instantiate()'

run:
	$(JULIA) --project=$(PROJECT) $(ENTRY)

test:
	$(JULIA) --project=$(PROJECT) $(TEST_ENTRY)

clean:
	rm -rf *.log

