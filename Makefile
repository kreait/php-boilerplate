.PHONY: help tests
.DEFAULT_GOAL := help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-12s\033[0m %s\n", $$1, $$2}'

tests: ## Executes the test suite
	./bin/phpunit

coverage: ## Executes the test suite and creates code coverage reports
	./bin/phpunit --coverage-html build/coverage

cs: ## Applies coding style fixes
	./bin/php-cs-fixer fix 2>/dev/null; true


