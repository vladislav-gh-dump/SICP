install:
	raco pkg install sicp
	raco pkg install review

test:
	raco test my-solutions

lint:
	@echo "check codestyle"
	@(for f in $$(find my-solutions -name '*.rkt'); do raco review $$f; done)

.PHONY: test
