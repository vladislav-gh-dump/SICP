todolist:
	@cat .rep/default/to-do-list > my-solutions/README.md
	@echo "DONE!"
	@echo "Look my-solutions/README.md"

install:
	raco pkg install sicp
	raco pkg install review

test:
	raco test my-solutions

lint:
	@echo "check codestyle"
	@(for f in $$(find my-solutions -name '*.rkt'); do raco review $$f; done)

.PHONY: test
