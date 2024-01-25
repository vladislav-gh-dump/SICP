install:
	raco pkg install sicp
	raco pkg install review

test:
	raco test example-for-test

lint:
	@echo "check codestyle"
	@(for f in $$(find example-for-test -name '*.rkt'); do raco review $$f; done)

.PHONY: test
