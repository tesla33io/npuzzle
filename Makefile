JULIA = julia
PROJECT = .
ENTRY = src/main.jl

all: deps

deps:
	$(JULIA) --project=$(PROJECT) -e 'using Pkg; Pkg.instantiate()'

run:
	$(JULIA) --project=$(PROJECT) $(ENTRY)

clean:
	rm -rf *.log

