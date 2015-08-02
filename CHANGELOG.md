# CHANGELOG

## 1.1.2 - 2015-08-03

* Fixed the `before_script` commands in the Travis CI configuration

## 1.1.1 - 2015-04-29

* Don't allow failures for HHVM.
* Add lowest PHP version (5.4) with lowest possible dependencies.
* Re-replace `composer install` with `composer update`, because `--prefer-lowest` does not work with `composer install`.

## 1.1 - 2015-04-29

* Remove HHVM nightly
* Set minimum PHP version in `composer.json` to PHP 5.4, as this is the lowest maintained version.
* Use `composer install` instead of `composer update` on Travis CI.
* Use `travis_retry` to handle network timeouts.

## 1.0.1 - 2015-04-26

* Suppress make error when executing the PHP CS Fixer. 

## 1.0 - 2015-04-26

* Initial release
