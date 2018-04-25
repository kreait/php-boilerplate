# PHP Boilerplate

A boilerplate for new composer based PHP projects.

## Getting started

### Create a new project based on the boilerplate:

```bash
$ composer create-project kreait/php-boilerplate new-project
```

### Update `composer.json`

Replace the Namespaces in the `autoload` and `autoload-dev` sections with your project's namespaces
and run `composer dump-autoload`.

### (Optional) Update `.gitattributes`

Remove the comments in `.gitattributes` so that unneeded files for your package won't get included in your releases.

### (Optional) Add `composer.lock` to the `.gitignore` file

If you're creating an application instead of a library, it is considered good practice to commit the `composer.lock` file together with the rest of the code.

### Start coding! :smile:
