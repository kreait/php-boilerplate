.PHONY: help tests
.DEFAULT_GOAL := help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-12s\033[0m %s\n", $$1, $$2}'

tests: ## Executes the test suite
	vendor/bin/phpunit

coverage: ## Executes the test suite and creates code coverage reports
	vendor/bin/phpunit --coverage-html build/coverage

view-coverage: ## Shows the code coverage report
	open build/coverage/index.html

cs: ## Fixes coding standard problems
	vendor/bin/php-cs-fixer fix || true

tag: ## Creates a new signed git tag
	$(if $(TAG),,$(error TAG is not defined. Pass via "make tag TAG=X.X.X"))
	@echo Tagging $(TAG)
	chag update $(TAG)
	git add --all
	git commit -m 'Release $(TAG)'
	git tag -s $(TAG) -m 'Release $(TAG)'
