default: help

help:
	@echo "Please use 'make <target>' where <target> is one of"
	@echo "  tests                  Executes the Unit tests"
	@echo "  coverage               Creates the Coverage reports"
	@echo "  cs                     Executes the PHP CS Fixer"

tests:
	./bin/phpunit

coverage:
	./bin/phpunit --coverage-html build/coverage

cs:
	./bin/php-cs-fixer fix 2>/dev/null; true

.PHONY: tests coverage cs travis-tests
